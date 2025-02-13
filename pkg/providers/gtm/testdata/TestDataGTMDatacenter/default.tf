# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_gtm_datacenter" "test" {
  domain        = "gtm_terra_testdomain.akadns.net"
  datacenter_id = 1
}
