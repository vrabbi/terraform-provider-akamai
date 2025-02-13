# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_property" "test" {
  name        = "test_property"
  contract_id = "ctr_1"
  group_id    = "grp_2"
  product_id  = "prd_3"

  hostnames {
    cname_to               = "to2.test.domain"
    cname_from             = "from2.test.domain"
    cert_provisioning_type = "DEFAULT"
  }
  hostnames {
    cname_to               = "to1.test.domain"
    cname_from             = "from1.test.domain"
    cert_provisioning_type = "DEFAULT"
  }

  rules = data.akamai_property_rules_template.akarules.json

}

data "akamai_property_rules_template" "akarules" {
  template_file = "testdata/TestResProperty/Lifecycle/property-snippets/rules1.json"
}
