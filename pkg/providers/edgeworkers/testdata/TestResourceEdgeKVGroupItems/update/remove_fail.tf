# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_edgekv_group_items" "test" {
  namespace_name = "test_namespace"
  network        = "staging"
  group_name     = "1234"
  items = {
    key1 = "value1"
  }
}

