# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_edgeworker" "test" {
  edgeworker_id = 3
  local_bundle  = "test_tmp/TestDataEdgeWorkersEdgeWorker/bundles/edgeworker_one_warning.tgz"
}
