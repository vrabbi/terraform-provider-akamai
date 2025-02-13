# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

data "akamai_botman_custom_bot_category" "test" {
  config_id   = 43253
  category_id = "cc9c3f89-e179-4892-89cf-d5e623ba9dc7"
}