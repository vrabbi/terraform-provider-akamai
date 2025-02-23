resource "akamai_dns_zone" "test_primary_zone" {
  contract       = data.akamai_contract.contract.id
  group          = data.akamai_group.group.id
  zone           = "example_primary.net"
  type           = "PRIMARY"
  comment        = "This is a test  primary zone"
  sign_and_serve = false
}

resource "akamai_dns_zone" "test_secondary_zone" {
  contract       = data.akamai_contract.contract.id
  group          = data.akamai_group.group.id
  zone           = "example_secondary.net"
  masters        = ["1.2.3.4", "1.2.3.5"]
  type           = "secondary"
  comment        = "This is a test secondary zone"
  sign_and_serve = false
}
