# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_dns_zone" "primary_test_zone" {
  contract       = "ctr1"
  zone           = "primaryexampleterraform.io"
  type           = "primary"
  comment        = "This is an updated test primary zone"
  sign_and_serve = false
  group          = "grp1"
}