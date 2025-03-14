---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_zone_dnssec_status Data Source - terraform-provider-akamai"
subcategory: ""
description: |-
  Single zone's DNSSEC status data source.
---

# akamai_zone_dnssec_status (Data Source)

Single zone's DNSSEC status data source.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `zone` (String) The name of the zone.

### Read-Only

- `alerts` (Set of String) A set of existing problems with the current DNSSEC configuration.
- `current_records` (Attributes) The currently active set of generated DNSSEC records. (see [below for nested schema](#nestedatt--current_records))
- `new_records` (Attributes) The newly generated set of DNSSEC records, if one exists. (see [below for nested schema](#nestedatt--new_records))

<a id="nestedatt--current_records"></a>
### Nested Schema for `current_records`

Read-Only:

- `dnskey_record` (String) The generated DNSKEY record for this zone.
- `ds_record` (String) The generated DS record for this zone.
- `expected_ttl` (Number) The TTL on the NS record for this zone. This should match the TTL on the DS or DNSKEY record.
- `last_modified_date` (String) The ISO 8601 timestamp on which these records were generated.


<a id="nestedatt--new_records"></a>
### Nested Schema for `new_records`

Read-Only:

- `dnskey_record` (String) The generated DNSKEY record for this zone.
- `ds_record` (String) The generated DS record for this zone.
- `expected_ttl` (Number) The TTL on the NS record for this zone. This should match the TTL on the DS or DNSKEY record.
- `last_modified_date` (String) The ISO 8601 timestamp on which these records were generated.
