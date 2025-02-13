# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_networklist_network_lists" "test" {
  network_list_id = "86093_AGEOLIST"
}
