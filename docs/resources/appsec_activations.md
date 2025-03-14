---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_appsec_activations Resource - terraform-provider-akamai"
subcategory: ""
description: |-
  
---

# akamai_appsec_activations (Resource)





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `config_id` (Number) Unique identifier of the security configuration to be activated
- `notification_emails` (Set of String) List of email addresses to be notified with the results of the activation
- `version` (Number) Version of the security configuration to be activated

### Optional

- `network` (String) Network on which to activate the configuration version (STAGING or PRODUCTION)
- `note` (String) Note describing the activation. Will use timestamp if omitted.
- `timeouts` (Block, Optional) (see [below for nested schema](#nestedblock--timeouts))

### Read-Only

- `id` (String) The ID of this resource.
- `status` (String) The results of the activation

<a id="nestedblock--timeouts"></a>
### Nested Schema for `timeouts`

Optional:

- `default` (String)
