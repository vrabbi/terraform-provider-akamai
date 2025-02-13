# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_clientlist_list" "test_list" {
  name        = "List Name"
  tags        = ["a", "b"]
  notes       = "List Notes"
  type        = "ASN"
  contract_id = "12_ABC"
  group_id    = 12

}

output "version" {
  value = akamai_clientlist_list.test_list.version
}
