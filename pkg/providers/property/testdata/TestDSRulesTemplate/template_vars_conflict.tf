# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_property_rules_template" "test" {
  template_file       = "testdata/TestDSRulesTemplate/rules/property-snippets/template_in.json"
  var_definition_file = "testdata/TestDSRulesTemplate/rules/variables/variableDefinitions.json"
  var_values_file     = "testdata/TestDSRulesTemplate/rules/variables/variables.json"
  variables {
    name  = "criteriaMustSatisfy"
    value = "all"
    type  = "string"
  }
  variables {
    name  = "name"
    value = "test"
    type  = "string"
  }
  variables {
    name  = "enabled"
    value = "true"
    type  = "bool"
  }
  variables {
    name  = "options"
    value = "{\"enabled\":true}"
    type  = "jsonBlock"
  }
}
