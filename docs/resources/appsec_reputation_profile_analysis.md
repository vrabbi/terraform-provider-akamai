---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_appsec_reputation_profile_analysis Resource - terraform-provider-akamai"
subcategory: ""
description: |-
  
---

# akamai_appsec_reputation_profile_analysis (Resource)





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `config_id` (Number) Unique identifier of the security configuration
- `forward_shared_ip_to_http_header_siem` (Boolean) Whether to add a value indicating that shared IPs are included in HTTP header and SIEM integration
- `forward_to_http_header` (Boolean) Whether to add client reputation details to requests forwarded to the origin server
- `security_policy_id` (String) Unique identifier of the security policy

### Read-Only

- `id` (String) The ID of this resource.
