---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_iam_cidr_block Resource - terraform-provider-akamai"
subcategory: ""
description: |-
  
---

# akamai_iam_cidr_block (Resource)





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `cidr_block` (String) The value of an IP address or IP address range.
- `enabled` (Boolean) Enables the CIDR block on the account.

### Optional

- `comments` (String) Descriptive label you provide for the CIDR block.

### Read-Only

- `actions` (Attributes) Specifies activities available for the CIDR block. (see [below for nested schema](#nestedatt--actions))
- `cidr_block_id` (Number) Unique identifier for each CIDR block.
- `created_by` (String) The user who created the CIDR block.
- `created_date` (String) ISO 8601 timestamp indicating when the CIDR block was created.
- `modified_by` (String) The user who last edited the CIDR block.
- `modified_date` (String) ISO 8601 timestamp indicating when the CIDR block was last modified.

<a id="nestedatt--actions"></a>
### Nested Schema for `actions`

Read-Only:

- `delete` (Boolean) Whether you can delete this CIDR block. You can't delete a CIDR block from an IP address not on the allowlist, or if the CIDR block is the only one on the allowlist.
- `edit` (Boolean) Whether you can edit this CIDR block. You can't edit CIDR block from an IP address not on the allowlist, or if the CIDR block is the only one on the allowlist.
