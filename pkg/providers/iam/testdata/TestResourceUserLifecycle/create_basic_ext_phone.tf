# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_iam_user" "test" {
  first_name = "John"
  last_name  = "Smith"
  email      = "jsmith@example.com"
  country    = "country"
  phone      = "(617) 444-3000 x2664"
  enable_tfa = false

  auth_grants_json = "[{\"groupId\":0,\"groupName\":\"group\",\"roleDescription\":\"\",\"roleName\":\"\"}]"
}
