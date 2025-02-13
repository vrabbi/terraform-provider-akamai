# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_advanced_settings_attack_payload_logging" "policy" {
  config_id              = 43253
  security_policy_id     = "test_policy"
  attack_payload_logging = file("testdata/TestResAdvancedSettingsAttackPayloadLogging/UpdateAdvancedSettingsAttackPayloadLoggingPolicy.json")
}