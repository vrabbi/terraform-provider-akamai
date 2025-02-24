---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_appsec_rapid_rules Resource - terraform-provider-akamai"
subcategory: ""
description: |-
  Rapid rule resource.
---

# akamai_appsec_rapid_rules (Resource)

Rapid rule resource.



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `config_id` (Number) Unique identifier of the security configuration
- `security_policy_id` (String) Unique identifier of the security policy

### Optional

- `default_action` (String) Default action that applies to violations of all rapid rules
- `rule_definitions` (String) JSON-formatted list of rule definition (ID, action, action lock and exception)

### Read-Only

- `enabled` (Boolean) Hidden attribute containing information about rapid rules status enabled/disabled
- `id` (String) Identifier of the resource
