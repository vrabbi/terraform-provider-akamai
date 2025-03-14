---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_iam_blocked_properties Data Source - terraform-provider-akamai"
subcategory: ""
description: |-
  Blocked Properties data source.
---

# akamai_iam_blocked_properties (Data Source)

Blocked Properties data source.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `contract_id` (String) Contract ID for which block properties are retrieved.
- `group_id` (Number) Unique identifier for each group.
- `ui_identity_id` (String) Unique identifier for each user.

### Read-Only

- `blocked_properties` (Attributes List) The list of blocked properties. (see [below for nested schema](#nestedatt--blocked_properties))

<a id="nestedatt--blocked_properties"></a>
### Nested Schema for `blocked_properties`

Read-Only:

- `asset_id` (Number) IAM's blocked property ID.
- `property_id` (String) PAPI's blocked property ID.
