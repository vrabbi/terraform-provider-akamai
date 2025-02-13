# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_cps_upload_certificate" "test" {
  enrollment_id                          = 2
  certificate_ecdsa_pem                  = "-----BEGIN CERTIFICATE ECDSA REQUEST-----\n...\n-----END CERTIFICATE ECDSA REQUEST-----"
  certificate_rsa_pem                    = "-----BEGIN CERTIFICATE RSA REQUEST-----\n...\n-----END CERTIFICATE RSA REQUEST-----"
  trust_chain_ecdsa_pem                  = "-----BEGIN CERTIFICATE TRUST-CHAIN ECDSA REQUEST-----\n...\n-----END CERTIFICATE TRUST-CHAIN ECDSA REQUEST-----"
  trust_chain_rsa_pem                    = "-----BEGIN CERTIFICATE TRUST-CHAIN RSA REQUEST-----\n...\n-----END CERTIFICATE TRUST-CHAIN RSA REQUEST-----"
  acknowledge_post_verification_warnings = true
  acknowledge_change_management          = true
}
