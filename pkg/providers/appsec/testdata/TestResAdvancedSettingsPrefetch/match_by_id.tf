# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_advanced_settings_prefetch" "test" {
  config_id            = 43253
  enable_app_layer     = true
  all_extensions       = false
  enable_rate_controls = false
  extensions = [
    "cgi",
    "jsp",
    "aspx",
    "EMPTY_STRING",
    "php",
    "py",
    "asp"
  ]
}

