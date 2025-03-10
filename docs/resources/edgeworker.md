---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_edgeworker Resource - terraform-provider-akamai"
subcategory: ""
description: |-
  
---

# akamai_edgeworker (Resource)





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `group_id` (String) Defines the group association for the EdgeWorker
- `name` (String) The EdgeWorker name
- `resource_tier_id` (Number) The unique identifier of a resource tier

### Optional

- `local_bundle` (String) The path to the EdgeWorkers tgz code bundle
- `timeouts` (Block List, Max: 1) Enables to set timeout for processing (see [below for nested schema](#nestedblock--timeouts))

### Read-Only

- `edgeworker_id` (Number) The unique identifier of the EdgeWorker
- `id` (String) The ID of this resource.
- `local_bundle_hash` (String) The local bundle hash for the EdgeWorker
- `version` (String) The bundle version
- `warnings` (List of String) The list of warnings returned by EdgeWorker validation

<a id="nestedblock--timeouts"></a>
### Nested Schema for `timeouts`

Optional:

- `default` (String)
