# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_gtm_domain" "testdomain" {
  name                      = "gtm_terra_testdomain.akadns.net"
  type                      = "weighted"
  contract                  = "1-2ABCDEF"
  comment                   = "Edit Property test_property"
  group                     = "123ABC"
  load_imbalance_percentage = 20.0
}
