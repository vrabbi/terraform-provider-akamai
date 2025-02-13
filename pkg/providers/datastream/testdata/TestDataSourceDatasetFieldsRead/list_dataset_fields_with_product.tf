# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_datastream_dataset_fields" "test" {
  product_id = "PROD_1"
}