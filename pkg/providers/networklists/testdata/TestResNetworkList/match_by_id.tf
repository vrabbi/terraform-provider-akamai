# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_networklist_network_list" "test" {
  name        = "Voyager Call Center Whitelist"
  type        = "IP"
  description = "Notes about this network list"
  list        = ["10.1.8.23", "10.3.5.67"]
  mode        = "REPLACE"
}

