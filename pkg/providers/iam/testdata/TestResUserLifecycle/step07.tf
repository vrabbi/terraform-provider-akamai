# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_iam_user" "test" {
  first_name = "first name B"
  last_name  = "last name B"
  email      = "email@akamai.net"
  country    = "country B"
  phone      = "(111) 111-1111"
  enable_tfa = false

  auth_grants_json = "[{\"groupId\":0,\"groupName\":\"A\",\"roleDescription\":\"\",\"roleName\":\"\"}]"
}
