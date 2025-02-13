# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_cloudlets_application_load_balancer_activation" "test" {
  origin_id = "org_1"
  network   = "production"
  version   = 1
}

output "status" {
  value = akamai_cloudlets_application_load_balancer_activation.test.status
}