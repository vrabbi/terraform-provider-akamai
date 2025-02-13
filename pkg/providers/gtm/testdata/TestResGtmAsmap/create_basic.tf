# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

locals {
  gtmTestDomain = "gtm_terra_testdomain.akadns.net"
}

resource "akamai_gtm_asmap" "tfexample_as_1" {
  domain = local.gtmTestDomain
  name   = "tfexample_as_1"
  default_datacenter {
    datacenter_id = 5400
    nickname      = "default datacenter"
  }
  assignment {
    datacenter_id = 3131
    nickname      = "tfexample_dc_1"
    as_numbers    = [12222, 16702, 17334]
  }
  assignment {
    datacenter_id = 3132
    nickname      = "tfexample_dc_2"
    as_numbers    = [12229, 16703, 17335]
  }
  wait_on_complete = false
}

