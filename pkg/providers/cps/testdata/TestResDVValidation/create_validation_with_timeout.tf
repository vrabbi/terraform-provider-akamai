# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_cps_dv_validation" "dv_validation" {
  enrollment_id = 1
  sans = [
    "san.test.akamai.com",
  ]
  timeouts {
    default = "2ms"
  }
}