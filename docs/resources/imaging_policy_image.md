---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_imaging_policy_image Resource - terraform-provider-akamai"
subcategory: ""
description: |-
  
---

# akamai_imaging_policy_image (Resource)





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `contract_id` (String) Unique identifier for the Akamai Contract containing the Policy Set(s)
- `json` (String) A JSON encoded policy
- `policy_id` (String) Unique identifier for a Policy. It is not possible to modify the id of the policy.
- `policyset_id` (String) Unique identifier for the Image & Video Manager Policy Set.

### Optional

- `activate_on_production` (Boolean) With this flag set to false, the user can perform modifications on staging without affecting the version already saved to production. With this flag set to true, the policy will be saved on the production network. It is possible to change it back to false only when there are any changes to the policy qualifying it for the new version.

### Read-Only

- `id` (String) The ID of this resource.
- `version` (Number) The version number of this policy version
