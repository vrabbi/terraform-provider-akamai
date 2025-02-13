// Copyright (c) HashiCorp, Inc.

package property

import (
	"regexp"
	"testing"

	"github.com/akamai/AkamaiOPEN-edgegrid-golang/v10/pkg/papi"
	"github.com/akamai/terraform-provider-akamai/v7/pkg/common/testutils"
	"github.com/hashicorp/terraform-plugin-testing/helper/resource"
)

func TestDSCPCode(t *testing.T) {
	t.Run("match by name", func(t *testing.T) {
		client := &papi.Mock{}

		// name provided by fixture is "test cpcode"
		cpc := papi.CPCodeItems{Items: []papi.CPCode{
			{ID: "cpc_123", Name: "wrong CP code"},
			{ID: "cpc_234", Name: "test cpcode", ProductIDs: []string{"prd_test1", "prd_test2"}},
		}}

		client.On("GetCPCodes",
			testutils.MockContext,
			papi.GetCPCodesRequest{ContractID: "ctr_test", GroupID: "grp_test"},
		).Return(&papi.GetCPCodesResponse{CPCodes: cpc}, nil)

		useClient(client, nil, func() {
			resource.UnitTest(t, resource.TestCase{
				ProtoV6ProviderFactories: testutils.NewProtoV6ProviderFactory(NewSubprovider()),
				Steps: []resource.TestStep{{
					Config: testutils.LoadFixtureString(t, "testdata/TestDSCPCode/match_by_name.tf"),
					Check: resource.ComposeAggregateTestCheckFunc(
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "id", "234"),
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "name", "test cpcode"),
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "group_id", "grp_test"),
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "contract_id", "ctr_test"),
					),
				}},
			})
		})

		client.AssertExpectations(t)
	})

	t.Run("match by name output products", func(t *testing.T) {
		client := &papi.Mock{}

		// name provided by fixture is "test cpcode"
		cpc := papi.CPCodeItems{Items: []papi.CPCode{
			{ID: "cpc_123", Name: "wrong CP code"},
			{ID: "cpc_234", Name: "test cpcode", ProductIDs: []string{"prd_test1", "prd_test2"}},
		}}

		client.On("GetCPCodes",
			testutils.MockContext,
			papi.GetCPCodesRequest{ContractID: "ctr_test", GroupID: "grp_test"},
		).Return(&papi.GetCPCodesResponse{CPCodes: cpc}, nil)

		useClient(client, nil, func() {
			resource.UnitTest(t, resource.TestCase{
				ProtoV6ProviderFactories: testutils.NewProtoV6ProviderFactory(NewSubprovider()),
				Steps: []resource.TestStep{{
					Config: testutils.LoadFixtureString(t, "testdata/TestDSCPCode/match_by_name_output_products.tf"),
					Check: resource.ComposeAggregateTestCheckFunc(
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "id", "234"),
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "name", "test cpcode"),
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "group_id", "grp_test"),
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "contract_id", "ctr_test"),
						resource.TestCheckOutput("product1", "prd_test1"),
						resource.TestCheckOutput("product2", "prd_test2"),
					),
				}},
			})
		})

		client.AssertExpectations(t)
	})

	t.Run("match by full ID", func(t *testing.T) {
		client := &papi.Mock{}

		// name provided by fixture is "cpc_234"
		cpc := papi.CPCodeItems{Items: []papi.CPCode{
			{ID: "cpc_123", Name: "wrong CP code"},
			{ID: "cpc_234", Name: "test cpcode", ProductIDs: []string{"prd_test1", "prd_test2"}},
		}}

		client.On("GetCPCodes",
			testutils.MockContext,
			papi.GetCPCodesRequest{ContractID: "ctr_test", GroupID: "grp_test"},
		).Return(&papi.GetCPCodesResponse{CPCodes: cpc}, nil)

		useClient(client, nil, func() {
			resource.UnitTest(t, resource.TestCase{
				ProtoV6ProviderFactories: testutils.NewProtoV6ProviderFactory(NewSubprovider()),
				Steps: []resource.TestStep{{
					Config: testutils.LoadFixtureString(t, "testdata/TestDSCPCode/match_by_full_id.tf"),
					Check: resource.ComposeAggregateTestCheckFunc(
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "id", "234"),
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "name", "cpc_234"),
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "group_id", "grp_test"),
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "contract_id", "ctr_test"),
					),
				}},
			})
		})

		client.AssertExpectations(t)
	})

	t.Run("match by unprefixed ID", func(t *testing.T) {
		client := &papi.Mock{}

		// name provided by fixture is "234"
		cpc := papi.CPCodeItems{Items: []papi.CPCode{
			{ID: "cpc_123", Name: "wrong CP code"},
			{ID: "cpc_234", Name: "test cpcode", ProductIDs: []string{"prd_test1", "prd_test2"}},
		}}

		client.On("GetCPCodes",
			testutils.MockContext,
			papi.GetCPCodesRequest{ContractID: "ctr_test", GroupID: "grp_test"},
		).Return(&papi.GetCPCodesResponse{CPCodes: cpc}, nil)

		useClient(client, nil, func() {
			resource.UnitTest(t, resource.TestCase{
				ProtoV6ProviderFactories: testutils.NewProtoV6ProviderFactory(NewSubprovider()),
				Steps: []resource.TestStep{{
					Config: testutils.LoadFixtureString(t, "testdata/TestDSCPCode/match_by_unprefixed_id.tf"),
					Check: resource.ComposeAggregateTestCheckFunc(
						resource.TestCheckResourceAttr("data.akamai_cp_code.test", "id", "234"),
					),
				}},
			})
		})

		client.AssertExpectations(t)
	})

	t.Run("no matches", func(t *testing.T) {
		client := &papi.Mock{}

		// name provided by fixture is "test cpcode"
		cpc := papi.CPCodeItems{Items: []papi.CPCode{
			{ID: "cpc_123", Name: "wrong CP code"},
			{ID: "cpc_345", Name: "Also wrong CP code"},
		}}

		client.On("GetCPCodes",
			testutils.MockContext,
			papi.GetCPCodesRequest{ContractID: "ctr_test", GroupID: "grp_test"},
		).Return(&papi.GetCPCodesResponse{CPCodes: cpc}, nil)

		useClient(client, nil, func() {
			resource.UnitTest(t, resource.TestCase{
				ProtoV6ProviderFactories: testutils.NewProtoV6ProviderFactory(NewSubprovider()),
				Steps: []resource.TestStep{{
					Config:      testutils.LoadFixtureString(t, "testdata/TestDSCPCode/match_by_unprefixed_id.tf"),
					ExpectError: regexp.MustCompile(`cp code not found`),
				}},
			})
		})

		client.AssertExpectations(t)
	})

	t.Run("group not found in state", func(t *testing.T) {
		client := &papi.Mock{}
		client.On("GetCPCodes",
			testutils.MockContext, testutils.MockContext,
		).Return(&papi.GetCPCodesResponse{CPCodes: papi.CPCodeItems{Items: []papi.CPCode{{
			ID: "cpc_123", Name: "test-ft-cp-code", CreatedDate: "", ProductIDs: []string{"prd_prod1"},
		}}}}, nil)
		client.On("CreateCPCode", testutils.MockContext, testutils.MockContext).Return(&papi.CreateCPCodeResponse{}, nil)
		client.On("GetCPCode", testutils.MockContext, testutils.MockContext).Return(&papi.GetCPCodesResponse{CPCode: papi.CPCode{
			ID: "cpc_123", Name: "test-ft-cp-code", CreatedDate: "", ProductIDs: []string{"prd_prod1"},
		}}, nil).Times(3)
		useClient(client, nil, func() {
			resource.UnitTest(t, resource.TestCase{
				ProtoV6ProviderFactories: testutils.NewProtoV6ProviderFactory(NewSubprovider()),
				IsUnitTest:               true,
				Steps: []resource.TestStep{{
					Config: testutils.LoadFixtureString(t, "testdata/TestDSGroupNotFound/cp_code.tf"),
				}},
			})
		})
	})
}
