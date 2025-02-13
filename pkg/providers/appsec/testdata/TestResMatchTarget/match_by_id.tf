# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_match_target" "test" {
  config_id = 43253
  match_target = jsonencode({
    "type" : "website",
    "configId" : 43253,
    "configVersion" : 15,
    "defaultFile" : "NO_MATCH",
    "effectiveSecurityControls" : {
      "applyApplicationLayerControls" : false,
      "applyBotmanControls" : false,
      "applyNetworkLayerControls" : false,
      "applyRateControls" : false,
      "applyReputationControls" : false,
      "applySlowPostControls" : false
    },
    "fileExtensions" : [
      "carb",
      "pct",
      "pdf",
      "swf",
      "cct",
      "jpeg",
      "js",
      "wmls",
      "hdml",
      "pws"
    ],
    "filePaths" : [
      "/cache/aaabbc*"
    ],
    "hostnames" : [
      "m.example.com",
      "www.example.net",
      "example.com"
    ],
    "isNegativeFileExtensionMatch" : false,
    "isNegativePathMatch" : false,
    "securityPolicy" : {
      "policyId" : "AAAA_81230"
    },
    "sequence" : 1
  })

}

