# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_gtm_resource" "my_gtm_resource" {
  resource_name = "tfexample_resource_1"
}