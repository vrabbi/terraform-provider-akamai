resource "akamai_property" "property" {
  name = "akavadeveloper"

  product_id  = "prd_SPM"
  contract_id = data.akamai_contract.contract.id
  group_id    = data.akamai_group.group.id

  hostnames {
    cname_from             = "terraform.example.org"
    cname_to               = akamai_edge_hostname.test.edge_hostname
    cert_provisioning_type = "CPS_MANAGED"
  }

  rule_format = "v2019-07-25"

  rules = data.akamai_property_rules.rules.rules
}
