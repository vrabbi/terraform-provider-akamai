# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_datastream" "s" {
  active = false
  delivery_configuration {
    field_delimiter = "SPACE"
    format          = "STRUCTURED"
    frequency {
      interval_in_secs = 30
    }
  }

  contract_id = "test_contract"
  dataset_fields = [
    1001
  ]
  group_id = 1337
  properties = [
    1,
  ]
  stream_name = "test_stream"

  datadog_connector {
    auth_token   = "auth_token"
    display_name = "display_name"
    endpoint     = "endpoint"
  }
}
