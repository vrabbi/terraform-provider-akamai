# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_gtm_property" "tfexample_prop_1" {
  domain                 = "gtm_terra_testdomain.akadns.net"
  name                   = "tfexample_prop_1"
  type                   = "weighted-round-robin"
  score_aggregation_type = "median"
  handout_limit          = 5
  handout_mode           = "normal"
  traffic_target {
    datacenter_id = 3131
    enabled       = true
    weight        = 200
    servers       = ["1.2.3.4", "1.2.3.5"]
    handout_cname = "test"
  }

  traffic_target {
    datacenter_id = 3132
    enabled       = true
    weight        = 200
    servers       = ["1.2.3.6"]
    handout_cname = "test"
  }

  traffic_target {
    datacenter_id = 3133
    enabled       = true
    weight        = 200
    servers       = ["1.2.3.7", "1.2.3.8"]
    handout_cname = "test"
  }

  liveness_test {
    name                             = "lt5"
    test_interval                    = 40
    test_object_protocol             = "HTTP"
    test_timeout                     = 30
    answers_required                 = false
    disable_nonstandard_port_warning = false
    error_penalty                    = 0
    http_error3xx                    = false
    http_error4xx                    = false
    http_error5xx                    = false
    disabled                         = false
    http_header {
      name  = "test_name"
      value = "test_value"
    }
    peer_certificate_verification = false
    recursion_requested           = false
    request_string                = ""
    resource_type                 = ""
    response_string               = ""
    ssl_client_certificate        = ""
    ssl_client_private_key        = ""
    test_object                   = "/junk"
    test_object_password          = ""
    test_object_port              = 1
    test_object_username          = ""
    timeout_penalty               = 0
  }
  liveness_test {
    name                             = "OJ"
    peer_certificate_verification    = false
    test_interval                    = 60
    test_object                      = "/"
    http_error3xx                    = true
    http_error4xx                    = true
    http_error5xx                    = true
    disabled                         = false
    test_object_protocol             = "HTTP"
    test_object_port                 = 80
    disable_nonstandard_port_warning = false
    test_timeout                     = 10
    answers_required                 = false
    recursion_requested              = false
  }
  liveness_test {
    name                             = "STP"
    peer_certificate_verification    = false
    test_interval                    = 20
    test_object                      = "/"
    http_error3xx                    = true
    http_error4xx                    = true
    http_error5xx                    = true
    disabled                         = false
    test_object_protocol             = "HTTP"
    test_object_port                 = 80
    disable_nonstandard_port_warning = false
    test_timeout                     = 10
    answers_required                 = false
    recursion_requested              = false
  }
  failover_delay   = 0
  failback_delay   = 0
  wait_on_complete = false
}

