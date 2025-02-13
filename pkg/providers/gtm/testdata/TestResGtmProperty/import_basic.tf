# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_gtm_property" "test" {
  domain                 = "gtm_terra_testdomain.akadns.net"
  handout_limit          = 5
  handout_mode           = "normal"
  name                   = "tfexample_prop_1"
  score_aggregation_type = "median"
  type                   = "failover"
}
