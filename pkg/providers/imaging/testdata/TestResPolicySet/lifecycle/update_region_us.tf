# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_imaging_policy_set" "test_image_set" {
  name        = "test_policy_set"
  region      = "US"
  type        = "IMAGE"
  contract_id = "1-TEST"
}