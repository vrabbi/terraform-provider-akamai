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
  enable_mfa       = true
  auth_grants_json = "[{\"groupId\":0,\"groupName\":\"group\",\"roleDescription\":\"\",\"roleName\":\"\"}]"
  user_notifications {
    api_client_credential_expiry_notification = true
    new_user_notification                     = true
    password_expiry                           = true
    proactive = [
      "EdgeScape",
    ]
    upgrade = [
      "NetStorage",
    ]
    enable_email_notifications = true
  }
  user_notifications {
    api_client_credential_expiry_notification = false
    new_user_notification                     = true
    password_expiry                           = false
    proactive = [
      "EdgeScape",
    ]
    upgrade = [
      "NetStorage",
    ]
    enable_email_notifications = true
  }
}