---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_cloudaccess_keys Data Source - terraform-provider-akamai"
subcategory: ""
description: |-
  Cloud Access keys
---

# akamai_cloudaccess_keys (Data Source)

Cloud Access keys



<!-- schema generated by tfplugindocs -->
## Schema

### Read-Only

- `access_keys` (Attributes List) (see [below for nested schema](#nestedatt--access_keys))

<a id="nestedatt--access_keys"></a>
### Nested Schema for `access_keys`

Required:

- `access_key_name` (String) Name of the access key.

Read-Only:

- `access_key_uid` (Number) Identifier of the retrieved access key.
- `authentication_method` (String) The type of signing process used to authenticate API requests: AWS4_HMAC_SHA256 for Amazon Web Services or GOOG4_HMAC_SHA256 for Google Cloud Services in interoperability mode.
- `created_by` (String) The username of the person who created the access key.
- `created_time` (String) The time the access key was created, in ISO 8601 format.
- `groups` (Attributes List) A list of groups to which the access key is assigned. (see [below for nested schema](#nestedatt--access_keys--groups))
- `latest_version` (Number) The most recent version of the access key.
- `network_configuration` (Attributes) The API deploys the access key to this secure network. (see [below for nested schema](#nestedatt--access_keys--network_configuration))

<a id="nestedatt--access_keys--groups"></a>
### Nested Schema for `access_keys.groups`

Read-Only:

- `contracts_ids` (List of String) The Akamai contracts that are associated with this access key for the group_id.
- `group_id` (Number) The unique identifier of Akamai group that's associated with the access key.
- `group_name` (String) The name of Akamai group that's associated with the access key.


<a id="nestedatt--access_keys--network_configuration"></a>
### Nested Schema for `access_keys.network_configuration`

Read-Only:

- `additional_cdn` (String) The access key can be deployed to the Akamai’s  additional networks. Available options are RUSSIA_CDN and CHINA_CDN.
- `security_network` (String) Attribute defines the type of secure network to which access key is deployed. Two options are available: STANDARD_TLS and ENHANCED_TLS.
