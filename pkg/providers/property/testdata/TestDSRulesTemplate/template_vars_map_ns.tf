# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_property_rules_template" "test" {
  template_file = "testdata/TestDSRulesTemplate/some-rules/some-snippets/template_in.json"
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
  variables {
    name  = "domain"
    value = "[\"a\",\"b\",\"c\"]"
    type  = "jsonBlock"
  }
}
