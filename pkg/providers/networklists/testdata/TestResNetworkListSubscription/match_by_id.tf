# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_networklist_subscription" "test" {
  recipients   = ["test@email.com"]
  network_list = ["79536_MARTINNETWORKLIST"]
}

