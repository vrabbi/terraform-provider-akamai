---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "akamai_cloudlets_application_load_balancer Resource - terraform-provider-akamai"
subcategory: ""
description: |-
  
---

# akamai_cloudlets_application_load_balancer (Resource)





<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `data_centers` (Block Set, Min: 1) The object containing information on conditional origins being used as data centers for an Application Load Balancer implementation. Only Conditional Origins with an originType of CUSTOMER or NETSTORAGE can be used as data centers in an application load balancer configuration. (see [below for nested schema](#nestedblock--data_centers))
- `origin_id` (String) The conditional origin's unique identifier

### Optional

- `balancing_type` (String) The type of load balancing being performed. Options include WEIGHTED and PERFORMANCE
- `description` (String) The load balancer configuration version description
- `liveness_settings` (Block List, Max: 1) (see [below for nested schema](#nestedblock--liveness_settings))
- `origin_description` (String) The load balancer configuration description

### Read-Only

- `id` (String) The ID of this resource.
- `version` (Number) The load balancer configuration version
- `warnings` (String) Describes warnings during activation of load balancer configuration

<a id="nestedblock--data_centers"></a>
### Nested Schema for `data_centers`

Required:

- `continent` (String) The continent on which the data center is located
- `country` (String) The country in which the data center is located
- `latitude` (Number) The latitude value for the data center. This member supports six decimal places of precision.
- `longitude` (Number) The longitude value for the data center. This member supports six decimal places of precision.
- `origin_id` (String) The ID of an origin that represents the data center. The conditional origin, which is defined in the Property Manager API, must have an originType of either CUSTOMER or NET_STORAGE
- `percent` (Number) The percent of traffic that is sent to the data center. The total for all data centers must equal 100%.

Optional:

- `city` (String) The city in which the data center is located.
- `cloud_server_host_header_override` (Boolean) Describes if cloud server host header is overridden
- `cloud_service` (Boolean) Describes if this datacenter is a cloud service
- `hostname` (String) This should match the 'hostname' value defined for this datacenter in Property Manager
- `liveness_hosts` (List of String) An array of strings that represent the origin servers used to poll the data centers in an application load balancer configuration. These servers support basic HTTP polling.
- `state_or_province` (String) The state, province, or region where the data center is located


<a id="nestedblock--liveness_settings"></a>
### Nested Schema for `liveness_settings`

Required:

- `path` (String) The path to the test object used for liveness testing. The function of the test object is to help determine whether the data center is functioning.
- `port` (Number) The port for the test object. The default port is 80, which is standard for HTTP. Enter 443 if you are using HTTPS.
- `protocol` (String) The protocol or scheme for the database, either HTTP or HTTPS.

Optional:

- `additional_headers` (Map of String) Maps additional case-insensitive HTTP header names included to the liveness testing requests
- `host_header` (String) The Host header for the liveness HTTP request
- `interval` (Number) Describes how often the liveness test will be performed. Optional defaults to 60 seconds, minimum is 10 seconds.
- `peer_certificate_verification` (Boolean) Describes whether or not to validate the origin certificate for an HTTPS request
- `request_string` (String) The request which will be used for TCP(S) tests
- `response_string` (String)
- `status_3xx_failure` (Boolean) Set to true to mark the liveness test as failed when the request returns a 3xx (redirection) status code.
- `status_4xx_failure` (Boolean) Set to true to mark the liveness test as failed when the request returns a 4xx (client error) status code.
- `status_5xx_failure` (Boolean) Set to true to mark the liveness test as failed when the request returns a 5xx (server error) status code.
- `timeout` (Number) The number of seconds the system waits before failing the liveness test. The default is 25 seconds.
