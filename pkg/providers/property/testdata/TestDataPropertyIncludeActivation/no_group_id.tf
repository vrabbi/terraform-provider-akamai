# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}


data "akamai_property_include_activation" "test" {
  contract_id = "contract_123"
  include_id  = "inc_321"
  network     = "STAGING"
}
