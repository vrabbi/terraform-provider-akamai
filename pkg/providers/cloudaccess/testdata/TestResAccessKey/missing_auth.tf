# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_cloudaccess_key" "test" {
  access_key_name = "test_key_name"
  contract_id     = "1-CTRACT"
  credentials_a = {
    cloud_access_key_id     = "test_key_id"
    cloud_secret_access_key = "test_secret"
    primary_key             = true
  }
  group_id = 12345
  network_configuration = {
    security_network = "ENHANCED_TLS"
    additional_cdn   = "CHINA_CDN"
  }
}