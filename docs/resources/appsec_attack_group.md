---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_appsec_attack_group Resource - terraform-provider-akamai"
subcategory: ""
description: |-
  
---

# akamai_appsec_attack_group (Resource)





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `attack_group` (String) Unique name of the attack group to be modified
- `attack_group_action` (String) Action to be taken when the attack group is triggered
- `config_id` (Number) Unique identifier of the security configuration
- `security_policy_id` (String) Unique identifier of the security policy

### Optional

- `condition_exception` (String) JSON-formatted condition and exception information for the attack group

### Read-Only

- `id` (String) The ID of this resource.
