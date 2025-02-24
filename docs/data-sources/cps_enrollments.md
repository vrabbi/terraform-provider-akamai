---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_cps_enrollments Data Source - terraform-provider-akamai"
subcategory: ""
description: |-
  Get enrollments for given ContractID
---

# akamai_cps_enrollments (Data Source)

Get enrollments for given ContractID



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `contract_id` (String) Contract ID for which enrollments are retrieved

### Read-Only

- `enrollments` (Set of Object) (see [below for nested schema](#nestedatt--enrollments))
- `id` (String) The ID of this resource.

<a id="nestedatt--enrollments"></a>
### Nested Schema for `enrollments`

Read-Only:

- `admin_contact` (Set of Object) (see [below for nested schema](#nestedobjatt--enrollments--admin_contact))
- `assigned_slots` (List of Number)
- `certificate_chain_type` (String)
- `certificate_type` (String)
- `common_name` (String)
- `csr` (Set of Object) (see [below for nested schema](#nestedobjatt--enrollments--csr))
- `enable_multi_stacked_certificates` (Boolean)
- `enrollment_id` (Number)
- `network_configuration` (Set of Object) (see [below for nested schema](#nestedobjatt--enrollments--network_configuration))
- `org_id` (Number)
- `organization` (Set of Object) (see [below for nested schema](#nestedobjatt--enrollments--organization))
- `pending_changes` (Boolean)
- `production_slots` (List of Number)
- `registration_authority` (String)
- `sans` (Set of String)
- `secure_network` (String)
- `signature_algorithm` (String)
- `sni_only` (Boolean)
- `staging_slots` (List of Number)
- `tech_contact` (Set of Object) (see [below for nested schema](#nestedobjatt--enrollments--tech_contact))
- `validation_type` (String)

<a id="nestedobjatt--enrollments--admin_contact"></a>
### Nested Schema for `enrollments.admin_contact`

Read-Only:

- `address_line_one` (String)
- `address_line_two` (String)
- `city` (String)
- `country_code` (String)
- `email` (String)
- `first_name` (String)
- `last_name` (String)
- `organization` (String)
- `phone` (String)
- `postal_code` (String)
- `region` (String)
- `title` (String)


<a id="nestedobjatt--enrollments--csr"></a>
### Nested Schema for `enrollments.csr`

Read-Only:

- `city` (String)
- `country_code` (String)
- `organization` (String)
- `organizational_unit` (String)
- `preferred_trust_chain` (String)
- `state` (String)


<a id="nestedobjatt--enrollments--network_configuration"></a>
### Nested Schema for `enrollments.network_configuration`

Read-Only:

- `client_mutual_authentication` (Set of Object) (see [below for nested schema](#nestedobjatt--enrollments--network_configuration--client_mutual_authentication))
- `clone_dns_names` (Boolean)
- `disallowed_tls_versions` (Set of String)
- `geography` (String)
- `must_have_ciphers` (String)
- `ocsp_stapling` (String)
- `preferred_ciphers` (String)
- `quic_enabled` (Boolean)

<a id="nestedobjatt--enrollments--network_configuration--client_mutual_authentication"></a>
### Nested Schema for `enrollments.network_configuration.client_mutual_authentication`

Read-Only:

- `ocsp_enabled` (Boolean)
- `send_ca_list_to_client` (Boolean)
- `set_id` (String)



<a id="nestedobjatt--enrollments--organization"></a>
### Nested Schema for `enrollments.organization`

Read-Only:

- `address_line_one` (String)
- `address_line_two` (String)
- `city` (String)
- `country_code` (String)
- `name` (String)
- `phone` (String)
- `postal_code` (String)
- `region` (String)


<a id="nestedobjatt--enrollments--tech_contact"></a>
### Nested Schema for `enrollments.tech_contact`

Read-Only:

- `address_line_one` (String)
- `address_line_two` (String)
- `city` (String)
- `country_code` (String)
- `email` (String)
- `first_name` (String)
- `last_name` (String)
- `organization` (String)
- `phone` (String)
- `postal_code` (String)
- `region` (String)
- `title` (String)
