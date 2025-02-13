# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_dns_record" "a_record" {
  zone       = "exampleterraform.io"
  name       = "exampleterraform.io"
  recordtype = "A"
  ttl        = 300
  target     = ["10.0.0.4", "10.0.0.5"]
}
