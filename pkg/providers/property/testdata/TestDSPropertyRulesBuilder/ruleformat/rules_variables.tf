# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_property_rules_builder" "default" {
  rules_v2023_01_05 {
    name      = "default"
    is_secure = false
    custom_override {
      name        = "test"
      override_id = "test"
    }
    advanced_override = "test"
    comments          = "test"
    uuid              = "test"
    template_uuid     = "test"
    template_link     = "test"

    behavior {
      content_characteristics_amd {
        catalog_size                   = "SMALL"
        content_type                   = "ULTRA_HD"
        dash                           = true
        hds                            = true
        hls                            = true
        popularity_distribution        = "UNKNOWN"
        segment_duration_dash          = "SEGMENT_DURATION_10S"
        segment_duration_dash_custom   = 100
        segment_duration_hds           = "SEGMENT_DURATION_2S"
        segment_duration_hds_custom    = 100
        segment_duration_hls           = "SEGMENT_DURATION_4S"
        segment_duration_hls_custom    = 3.14
        segment_duration_smooth        = "SEGMENT_DURATION_8S"
        segment_duration_smooth_custom = 3.14
        segment_size_dash              = "GREATER_THAN_100MB"
        segment_size_hds               = "TEN_MB_TO_100_MB"
        segment_size_hls               = "GREATER_THAN_100MB"
        segment_size_smooth            = "UNKNOWN"
        smooth                         = true
      }
    }
    behavior {
      origin {
        cache_key_hostname            = "ORIGIN_HOSTNAME"
        compress                      = true
        enable_true_client_ip         = true
        forward_host_header           = "REQUEST_HOST_HEADER"
        http_port                     = 80
        https_port                    = 443
        origin_sni                    = true
        origin_type                   = "CUSTOMER"
        true_client_ip_client_setting = false
        true_client_ip_header         = "True-Client-IP"
        use_unique_cache_key          = false
        verification_mode             = "PLATFORM_SETTINGS"
      }
    }
    behavior {
      ad_scaler_circuit_breaker {
        return_error_response_code_based = "502"
      }
    }
    behavior {
      application_load_balancer {
        all_down_net_storage {
          cp_code              = 123
          download_domain_name = "test"
        }
        failover_origin_map {
          from_origin_id = "123"

        }
      }
    }
    behavior {
      api_prioritization {
        cloudlet_policy {
          id   = 1337
          name = "test"
        }
      }
    }

    behavior {
      caching {
        behavior = "NO_STORE"
      }
    }

    behavior {
      sure_route {
        enabled           = true
        force_ssl_forward = false
        race_stat_ttl     = "30m"
        to_host_status    = "INCOMING_HH"
        type              = "PERFORMANCE"
      }
    }

    behavior {
      tiered_distribution {
        enabled                 = true
        tiered_distribution_map = "CH2"
      }
    }

    behavior {
      prefetch {
        enabled = true
      }
    }

    behavior {
      allow_post {
        allow_without_content_length = false
        enabled                      = true
      }
    }
    behavior {
      cp_code {
        value {
          created_date = 1678276597000
          description  = "papi.declarativ.test.ipqa"
          id           = 1048126
          name         = "papi.declarativ.test.ipqa"
          products     = ["Fresca", ]
        }
      }
    }
    behavior {
      report {
        log_accept_language  = false
        log_cookies          = "OFF"
        log_custom_log_field = false
        log_edge_ip          = false
        log_host             = false
        log_referer          = false
        log_user_agent       = true
        log_x_forwarded_for  = false
      }
    }

    behavior {
      m_pulse {
        api_key         = ""
        buffer_size     = ""
        config_override = <<-EOT

EOT
        enabled         = true
        loader_version  = "V12"
        require_pci     = false

      }
    }
    children = [
      data.akamai_property_rules_builder.content_compression.json,
    ]
  }
}

data "akamai_property_rules_builder" "content_compression" {
  rules_v2023_01_05 {
    name                  = "Content Compression"
    criteria_must_satisfy = "all"
    criterion {
      content_type {
        match_case_sensitive = false
        match_operator       = "IS_ONE_OF"
        match_wildcard       = true
        values               = ["text/*", "application/javascript", "application/x-javascript", "application/x-javascript*", "application/json", "application/x-json", "application/*+json", "application/*+xml", "application/text", "application/vnd.microsoft.icon", "application/vnd-ms-fontobject", "application/x-font-ttf", "application/x-font-opentype", "application/x-font-truetype", "application/xmlfont/eot", "application/xml", "font/opentype", "font/otf", "font/eot", "image/svg+xml", "image/vnd.microsoft.icon", ]
      }
    }
    behavior {
      cp_code {
        value {
          created_date = 1678276597000
          description  = "papi.declarativ.test.ipqa"
          id           = 1048126
          name         = "papi.declarativ.test.ipqa"
          products     = ["Fresca", ]
          cp_code_limits {
            current_capacity = -143
            limit            = 100
            limit_type       = "global"
          }
        }
      }
    }
    behavior {
      cache_tag {
        tag = "nonprod-gol-static-{{builtin.AK_FILENAME}}-fixedstring{{user.PMUSER_FOO}}"
      }
    }

    behavior {
      segmented_content_protection {
        enabled                    = true
        hls_media_encryption       = false
        dash_media_encryption      = false
        token_authentication_title = ""
        media_encryption_title     = ""
        key                        = "1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f1f"
        use_advanced               = true
        token_auth_hls_title       = ""
        enable_token_in_uri        = false
        transition_key             = "2"
        salt                       = ""
        header_for_salt            = ["User-Agent", "X-Playback-Session-Id", "Origin"]
        field_carry_over           = ""
        session_id                 = true
        data_payload               = false
        ip                         = false
        acl                        = false
      }
    }

    behavior {
      verify_token_authorization {
        use_advanced        = true
        location            = "COOKIE"
        location_id         = "__token__"
        failure_response    = true
        key                 = "2"
        algorithm           = "SHA256"
        escape_hmac_inputs  = true
        ignore_query_string = false
        transition_key      = "3"
        salt                = ""
      }
    }

    children = [
    ]
  }
}
