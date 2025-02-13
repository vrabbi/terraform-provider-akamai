# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_iam_user" "test" {
  first_name       = "John"
  last_name        = "Smith"
  email            = "jsmith@example.com"
  country          = "country"
  phone            = "(111) 111-1111"
  enable_tfa       = false
  enable_mfa       = false
  lock             = true
  password         = "Password@123"
  auth_grants_json = "[{\"groupId\":0,\"groupName\":\"group\",\"roleDescription\":\"\",\"roleName\":\"\"}]"
}
