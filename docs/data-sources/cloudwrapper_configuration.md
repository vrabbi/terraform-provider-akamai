---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_cloudwrapper_configuration Data Source - terraform-provider-akamai"
subcategory: ""
description: |-
  CloudWrapper configuration
---

# akamai_cloudwrapper_configuration (Data Source)

CloudWrapper configuration



<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `id` (Number) Unique identifier of a Cloud Wrapper configuration.

### Read-Only

- `capacity_alerts_threshold` (Number) Represents the threshold for sending alerts.
- `comments` (String) Additional information provided by user which can help to differentiate or track changes of the configuration.
- `config_name` (String) Name of the configuration.
- `contract_id` (String) Contract ID with Cloud Wrapper entitlement.
- `last_activated_by` (String) User to last activate the configuration.
- `last_activated_date` (String) ISO format date that represents when the configuration was last activated successfully.
- `last_updated_by` (String) User to last modify the configuration.
- `last_updated_date` (String) ISO format date that represents when the configuration was last edited.
- `locations` (Block Set) List of all unused properties. (see [below for nested schema](#nestedblock--locations))
- `multi_cdn_settings` (Block, Read-only) Specify details about the Multi CDN settings. (see [below for nested schema](#nestedblock--multi_cdn_settings))
- `notification_emails` (Set of String) Email addresses to receive notifications.
- `property_ids` (Set of String) List of properties belonging to media delivery products. Properties need to be unique across configurations.
- `retain_idle_objects` (Boolean) Retain idle objects beyond their max idle lifetime.
- `status` (String) Current state of the provisioning of the configuration, either SAVED, IN_PROGRESS, ACTIVE, DELETE_IN_PROGRESS, or FAILED.

<a id="nestedblock--locations"></a>
### Nested Schema for `locations`

Read-Only:

- `capacity` (Object) The capacity assigned to this configuration's location. (see [below for nested schema](#nestedatt--locations--capacity))
- `comments` (String) Additional comments provided by user.
- `map_name` (String) The name of the map.
- `traffic_type_id` (Number) Unique identifier for the location and traffic type combination.

<a id="nestedatt--locations--capacity"></a>
### Nested Schema for `locations.capacity`

Read-Only:

- `unit` (String)
- `value` (Number)



<a id="nestedblock--multi_cdn_settings"></a>
### Nested Schema for `multi_cdn_settings`

Read-Only:

- `bocc` (Block, Read-only) Specify diagnostic data beacons details. (see [below for nested schema](#nestedblock--multi_cdn_settings--bocc))
- `cdns` (Block Set) List of CDN added for the configuration. (see [below for nested schema](#nestedblock--multi_cdn_settings--cdns))
- `data_streams` (Block, Read-only) Specifies data streams details. (see [below for nested schema](#nestedblock--multi_cdn_settings--data_streams))
- `enable_soft_alerts` (Boolean) Option to opt out of alerts based on soft limits of bandwidth usage.
- `origins` (Block Set) List of origins corresponding to the properties selected in the configuration. (see [below for nested schema](#nestedblock--multi_cdn_settings--origins))

<a id="nestedblock--multi_cdn_settings--bocc"></a>
### Nested Schema for `multi_cdn_settings.bocc`

Read-Only:

- `conditional_sampling_frequency` (String) The sampling frequency of requests and forwards for EDGE, MIDGRESS, and ORIGIN beacons.
- `enabled` (Boolean) Enable diagnostic data beacons for consumption by the Broadcast Operations Control Center.
- `forward_type` (String) Select whether to beacon diagnostics data for internal ORIGIN_ONLY, MIDGRESS_ONLY, or both ORIGIN_AND_MIDGRESS forwards.
- `request_type` (String) Select whether to beacon diagnostics data for EDGE_ONLY or EDGE_AND_MIDGRESS requests.
- `sampling_frequency` (String) The sampling frequency of requests and forwards for EDGE, MIDGRESS, and ORIGIN beacons.


<a id="nestedblock--multi_cdn_settings--cdns"></a>
### Nested Schema for `multi_cdn_settings.cdns`

Read-Only:

- `cdn_auth_keys` (Block Set) List of auth keys configured for the CDN. (see [below for nested schema](#nestedblock--multi_cdn_settings--cdns--cdn_auth_keys))
- `cdn_code` (String) Unique identifier for the CDN.
- `enabled` (Boolean) Enable CDN.
- `https_only` (Boolean) Specify whether CDN communication is HTTPS only.
- `ip_acl_cidrs` (Set of String) Configure an access control list using IP addresses in CIDR notation.

<a id="nestedblock--multi_cdn_settings--cdns--cdn_auth_keys"></a>
### Nested Schema for `multi_cdn_settings.cdns.cdn_auth_keys`

Read-Only:

- `auth_key_name` (String) The name of the auth key.
- `expiry_date` (String) The expirty date of an auth key.
- `header_name` (String) The header name of an auth key.
- `secret` (String) The secret of an auth key.



<a id="nestedblock--multi_cdn_settings--data_streams"></a>
### Nested Schema for `multi_cdn_settings.data_streams`

Read-Only:

- `data_stream_ids` (Set of Number) Unique identifiers of the Data Streams.
- `enabled` (Boolean) Enables DataStream reporting.
- `sampling_rate` (Number) Specifies the percentage of log data you want to collect for this configuration.


<a id="nestedblock--multi_cdn_settings--origins"></a>
### Nested Schema for `multi_cdn_settings.origins`

Read-Only:

- `hostname` (String) Origins hostname corresponding to the Akamai Delivery Property.
- `origin_id` (String) Origin identifier and will be used to generated Multi CDN host names.
- `property_id` (Number) Property ID of the property that origin belongs to.
