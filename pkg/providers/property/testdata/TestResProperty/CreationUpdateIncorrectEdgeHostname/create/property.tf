# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_property_rules_template" "akarules" {
  template_file = "testdata/TestResProperty/CreationUpdateIncorrectEdgeHostname/create/property-snippets/rules.json"
}

resource "akamai_property" "test" {
  name        = "dxe-2406-issue-example"
  contract_id = "ctr_1"
  group_id    = "grp_2"
  product_id  = "prd_3"
  hostnames {
    cname_to               = "dxe-2406-issue-example-second.com.example.net"
    cname_from             = "dxe-2406-issue-example-second.com"
    cert_provisioning_type = "CPS_MANAGED"
  }
  hostnames {
    cname_to               = "dxe-2406-issue.com.example.net"
    cname_from             = "dxe-2406-issue.com"
    cert_provisioning_type = "CPS_MANAGED"
  }

  rules = data.akamai_property_rules_template.akarules.json
}

resource "akamai_property_activation" "aka_property_activate" {
  contact     = ["dummy-user@akamai.com"]
  network     = "STAGING"
  property_id = akamai_property.test.id
  version     = akamai_property.test.latest_version
}