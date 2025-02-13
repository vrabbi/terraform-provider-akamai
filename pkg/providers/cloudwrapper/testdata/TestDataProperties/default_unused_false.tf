# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_cloudwrapper_properties" "test" {
  unused       = false
  contract_ids = ["ctr_1", "ctr_2"]
}