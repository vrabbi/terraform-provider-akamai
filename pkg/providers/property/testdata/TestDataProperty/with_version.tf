# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}


data "akamai_property" "prop" {
  name    = "property_name"
  version = 2
}
