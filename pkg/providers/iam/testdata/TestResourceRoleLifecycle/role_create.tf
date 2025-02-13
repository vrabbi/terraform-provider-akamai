# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_iam_role" "role" {
  name          = "role name"
  description   = "role description"
  granted_roles = [12345, 54321, 67890]
}