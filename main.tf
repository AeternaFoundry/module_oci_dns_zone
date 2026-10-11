resource "oci_dns_zone" "dns_zones" {
  for_each = var.dns_zones

  compartment_id  = each.value.compartment_id
  name            = each.value.name
  zone_type       = each.value.zone_type
  defined_tags    = each.value.defined_tags
  dnssec_state    = each.value.dnssec_state
  freeform_tags   = each.value.freeform_tags
  resolution_mode = each.value.resolution_mode
  scope           = each.value.scope
  view_id         = each.value.view_id

  dynamic "external_downstreams" {
    for_each = each.value.external_downstreams != null ? each.value.external_downstreams : []
    content {
      address     = external_downstreams.value.address
      port        = external_downstreams.value.port
      tsig_key_id = external_downstreams.value.tsig_key_id
    }
  }

  dynamic "external_masters" {
    for_each = each.value.external_masters != null ? each.value.external_masters : []
    content {
      address     = external_masters.value.address
      port        = external_masters.value.port
      tsig_key_id = external_masters.value.tsig_key_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

