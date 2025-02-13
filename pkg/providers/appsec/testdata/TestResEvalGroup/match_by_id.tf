# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_eval_group" "test" {
  config_id           = 43253
  security_policy_id  = "AAAA_81230"
  attack_group        = "SQL"
  attack_group_action = "alert"
  condition_exception = <<-EOF
{
    "conditions": [],
    "exception": {
        "headerCookieOrParamValues": [
            "abc"
        ],
        "specificHeaderCookieOrParamPrefix": {
            "prefix": "a*",
            "selector": "REQUEST_COOKIES"
        }
    }
}
EOF
}

