resource "akamai_dns_record" "soa_record" {
  zone        = local.zone
  name        = local.zone
  recordtype  = "SOA"
  ttl         = 86400
  name_server = "a1-98.akam.net."
  email_address = "hostmaster.${local.zone}"
  refresh = 3600
  retry = 600
  expiry = 604800
  nxdomain_ttl = 300
  depends_on = [ akamai_dns_zone.test_zone ]
}

resource "akamai_dns_record" "ns_record" {
    zone = local.zone
    target = data.akamai_authorities_set.ns_auths.authorities 
    name = local.zone
    recordtype = "NS"
    ttl = 86400
    depends_on = [ akamai_dns_zone.test_zone ]
}

resource "akamai_dns_record" "a_record" {
  zone       = local.zone
  name       = "a_${local.zone}"
  recordtype = "A"
  ttl        = 300
  target     = ["10.0.0.2", "10.0.0.3"]
  depends_on = [akamai_dns_zone.test_zone]
}

resource "akamai_dns_record" "aaaa_record" {
  zone       = local.zone
  name       = "ipv6record.${local.zone}"
  recordtype = "AAAA"
  ttl        = 3600
  target     = ["4001:ab8:85b3:0:0:8a1e:370:7225"]
  depends_on = [akamai_dns_zone.test_zone]
}

resource "akamai_dns_record" "afsdb_record" {
  zone       = local.zone
  name       = "afsdb.${local.zone}"
  recordtype = "AFSDB"
  ttl        = 3600
  subtype    = 4
  target     = ["example.com"]
  depends_on = [akamai_dns_zone.test_zone]
}

resource "akamai_dns_record" "cname_record" {
  zone       = local.zone
  name       = "www.${local.zone}"
  recordtype = "CNAME"
  ttl        = 300
  target     = ["api.${local.zone}"]
  depends_on = [akamai_dns_zone.test_zone]
}
