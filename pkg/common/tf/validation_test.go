// Copyright (c) HashiCorp, Inc.

package tf

import (
	"strings"
	"testing"

	"github.com/hashicorp/go-cty/cty"
	"github.com/hashicorp/terraform-plugin-sdk/v2/diag"
	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/schema"
	"github.com/stretchr/testify/assert"
)

func TestIsBlank(t *testing.T) {
	tests := map[string]struct {
		value     interface{}
		withError bool
	}{
		"empty string": {"", true},
		"nil map": {
			value: func() interface{} {
				var x map[string]string
				return x
			}(),
			withError: true,
		},
		"empty map":        {make(map[string]string), true},
		"nil":              {nil, true},
		"non empty string": {"abc", false},
	}
	for name, test := range tests {
		t.Run(name, func(t *testing.T) {
			res := IsNotBlank(test.value, nil)
			if test.withError {
				assert.NotNil(t, res)
				return
			}
			assert.Empty(t, res)
		})
	}
}

func TestAggregateValidations(t *testing.T) {
	tests := map[string]struct {
		funcs            []schema.SchemaValidateDiagFunc
		expectedDiagsLen int
	}{
		"some functions return errors": {
			funcs: []schema.SchemaValidateDiagFunc{
				func(_ interface{}, _ cty.Path) diag.Diagnostics {
					return diag.Errorf("1")
				},
				func(_ interface{}, _ cty.Path) diag.Diagnostics {
					return nil
				},
				func(_ interface{}, _ cty.Path) diag.Diagnostics {
					return diag.Diagnostics{diag.Diagnostic{Summary: "1"}, diag.Diagnostic{Summary: "2"}}
				},
			},
			expectedDiagsLen: 3,
		},
		"no errors": {
			funcs: []schema.SchemaValidateDiagFunc{
				func(_ interface{}, _ cty.Path) diag.Diagnostics {
					return nil
				},
			},
			expectedDiagsLen: 0,
		},
	}

	for name, test := range tests {
		t.Run(name, func(t *testing.T) {
			res := AggregateValidations(test.funcs...)(nil, nil)
			assert.Len(t, res, test.expectedDiagsLen)
		})
	}
}

func TestValidateJSON(t *testing.T) {
	tests := map[string]struct {
		givenVal      interface{}
		expectedError string
	}{
		"valid json passed": {
			givenVal: `{"abc":"cba","number":1}`,
		},
		"passed value is not a string": {
			givenVal:      1,
			expectedError: "value is not a string",
		},
		"invalid json provided": {
			givenVal:      "abc",
			expectedError: "invalid JSON",
		},
	}

	for name, test := range tests {
		t.Run(name, func(t *testing.T) {
			res := ValidateJSON(test.givenVal, nil)
			if test.expectedError != "" {
				assert.NotEmpty(t, res)
				assert.Contains(t, res[0].Summary, test.expectedError)
				return
			}
			assert.Empty(t, res)
		})
	}
}

func TestEmailValidation(t *testing.T) {
	tests := map[string]struct {
		givenVal      interface{}
		expectedError bool
	}{
		"empty email": {
			givenVal:      "",
			expectedError: true,
		},
		"invalid email": {
			givenVal:      "test",
			expectedError: true,
		},
		"no domain": {
			givenVal:      "test@akamai",
			expectedError: true,
		},
		"valid email": {
			givenVal:      "test@akamai.com",
			expectedError: false,
		},
	}

	for name, test := range tests {
		t.Run(name, func(t *testing.T) {
			diags := ValidateEmail(test.givenVal, nil)
			assert.Equal(t, test.expectedError, diags.HasError())
		})
	}
}

func TestValidateStringInSlice(t *testing.T) {
	valid := []string{"valid1", "valid2", "valid3"}
	validator := ValidateStringInSlice(valid)

	tests := map[string]struct {
		input        interface{}
		expectedDiag diag.Diagnostics
	}{
		"string found": {
			input:        "valid3",
			expectedDiag: nil,
		},
		"string not found": {
			input:        "test",
			expectedDiag: diag.Errorf("expected testAttr to be one of ['%s'], got test", strings.Join(valid, "', '")),
		},
		"error - provided value is not string": {
			input:        1,
			expectedDiag: diag.Errorf("expected type of testAttr to be string"),
		},
	}

	for name, test := range tests {
		t.Run(name, func(t *testing.T) {
			diags := validator(test.input, cty.Path{cty.GetAttrStep{Name: "testAttr"}})
			assert.Equal(t, test.expectedDiag, diags)
		})
	}
}

func TestValidateRuleForamt(t *testing.T) {
	tests := map[string]struct {
		input        interface{}
		acceptLatest bool
		expectError  string
	}{
		"valid rule format vYYYY-MM-DD": {
			input: "v2022-10-18",
		},
		"valid rule format vYYYY-MM-DD when acceptLatest is true": {
			input:        "v2022-10-18",
			acceptLatest: true,
		},
		"valid empty string": {
			input: "",
		},
		"valid `latest` when acceptLatest is true": {
			input:        "latest",
			acceptLatest: true,
		},
		"invalid `latest` when acceptLatest is false": {
			input:       "latest",
			expectError: `"rule_format" 'latest' is not valid`,
		},
		"invalid rule format YYYY-MM-DD": {
			input:       "2022-10-18",
			expectError: `"rule_format" must be of the form vYYYY-MM-DD`,
		},
		"invalid rule format vDD-MM-YYYY": {
			input:       "v18-10-2022",
			expectError: `"rule_format" must be of the form vYYYY-MM-DD`,
		},
		"error - format is not string": {
			input:       5,
			expectError: "expected string, got int",
		},
	}

	for name, testCase := range tests {
		t.Run(name, func(t *testing.T) {
			err := validateRuleFormat(testCase.input, testCase.acceptLatest)
			if len(testCase.expectError) > 0 {
				assert.Contains(t, err.Error(), testCase.expectError)
				return
			}
			assert.NoError(t, err)
		})
	}
}
