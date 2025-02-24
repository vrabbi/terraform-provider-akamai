---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_cloudlets_policy Data Source - terraform-provider-akamai"
subcategory: ""
description: |-
  
---

# akamai_cloudlets_policy (Data Source)





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `policy_id` (Number) An integer ID that is associated with a policy

### Optional

- `version` (Number) The version number of the policy

### Read-Only

- `activations` (Set of Object) A set of current policy activation information (see [below for nested schema](#nestedatt--activations))
- `api_version` (String) The specific version of this API
- `cloudlet_code` (String) Code for the type of Cloudlet (ALB, AP, CD, ER, FR or VP)
- `cloudlet_id` (Number) Defines the policy type
- `description` (String) The description of this specific policy
- `group_id` (Number) Defines the group association for the policy. You must have edit privileges for the group
- `id` (String) The ID of this resource.
- `match_rule_format` (String) The version of the Cloudlet-specific matchRules
- `match_rules` (String) A JSON structure that defines the rules for this policy
- `name` (String) The name of the policy. The name must be unique
- `revision_id` (Number) Unique ID given to every policy version update
- `rules_locked` (Boolean) If true, you cannot edit the match rules for the Cloudlet policy version
- `version_description` (String) The description of this specific version
- `warnings` (String) A JSON encoded list of warnings

<a id="nestedatt--activations"></a>
### Nested Schema for `activations`

Read-Only:

- `api_version` (String)
- `network` (String)
- `policy_info` (Set of Object) (see [below for nested schema](#nestedobjatt--activations--policy_info))
- `property_info` (Set of Object) (see [below for nested schema](#nestedobjatt--activations--property_info))

<a id="nestedobjatt--activations--policy_info"></a>
### Nested Schema for `activations.policy_info`

Read-Only:

- `activated_by` (String)
- `activation_date` (Number)
- `name` (String)
- `policy_id` (Number)
- `status` (String)
- `status_detail` (String)
- `version` (Number)


<a id="nestedobjatt--activations--property_info"></a>
### Nested Schema for `activations.property_info`

Read-Only:

- `activated_by` (String)
- `activation_date` (Number)
- `group_id` (Number)
- `name` (String)
- `status` (String)
- `version` (Number)
