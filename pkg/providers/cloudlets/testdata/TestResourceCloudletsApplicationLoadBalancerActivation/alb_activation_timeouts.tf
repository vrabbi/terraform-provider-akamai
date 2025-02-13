# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_cloudlets_application_load_balancer_activation" "test" {
  origin_id = "org_1"
  network   = "staging"
  version   = 1
  timeouts {
    default = "2h"
  }
}

output "status" {
  value = akamai_cloudlets_application_load_balancer_activation.test.status
}