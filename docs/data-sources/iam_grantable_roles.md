---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_iam_grantable_roles Data Source - terraform-provider-akamai"
subcategory: ""
description: |-
  Get roles for the current account and contract.
---

# akamai_iam_grantable_roles (Data Source)

Get roles for the current account and contract.



<!-- schema generated by tfplugindocs -->
## Schema

### Read-Only

- `grantable_roles` (List of Object) List of grantable roles. (see [below for nested schema](#nestedatt--grantable_roles))
- `id` (String) The ID of this resource.

<a id="nestedatt--grantable_roles"></a>
### Nested Schema for `grantable_roles`

Read-Only:

- `description` (String)
- `granted_role_id` (Number)
- `name` (String)
