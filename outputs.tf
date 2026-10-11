output "dns_zones_id" {
  description = "Map of id values across all dns_zones, keyed the same as var.dns_zones except keys with no id are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dns_zones_compartment_id" {
  description = "Map of compartment_id values across all dns_zones, keyed the same as var.dns_zones except keys with no compartment_id are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "dns_zones_defined_tags" {
  description = "Map of defined_tags values across all dns_zones, keyed the same as var.dns_zones except keys with no defined_tags are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "dns_zones_dnssec_config" {
  description = "Map of dnssec_config values across all dns_zones, keyed the same as var.dns_zones except keys with no dnssec_config are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.dnssec_config if v.dnssec_config != null && length(v.dnssec_config) > 0 }
}
output "dns_zones_dnssec_state" {
  description = "Map of dnssec_state values across all dns_zones, keyed the same as var.dns_zones except keys with no dnssec_state are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.dnssec_state if v.dnssec_state != null && length(v.dnssec_state) > 0 }
}
output "dns_zones_external_downstreams" {
  description = "Map of external_downstreams values across all dns_zones, keyed the same as var.dns_zones except keys with no external_downstreams are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.external_downstreams if v.external_downstreams != null && length(v.external_downstreams) > 0 }
}
output "dns_zones_external_masters" {
  description = "Map of external_masters values across all dns_zones, keyed the same as var.dns_zones except keys with no external_masters are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.external_masters if v.external_masters != null && length(v.external_masters) > 0 }
}
output "dns_zones_freeform_tags" {
  description = "Map of freeform_tags values across all dns_zones, keyed the same as var.dns_zones except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "dns_zones_is_protected" {
  description = "Map of is_protected values across all dns_zones, keyed the same as var.dns_zones except keys with no is_protected are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.is_protected if v.is_protected != null }
}
output "dns_zones_name" {
  description = "Map of name values across all dns_zones, keyed the same as var.dns_zones except keys with no name are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dns_zones_nameservers" {
  description = "Map of nameservers values across all dns_zones, keyed the same as var.dns_zones except keys with no nameservers are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.nameservers if v.nameservers != null && length(v.nameservers) > 0 }
}
output "dns_zones_resolution_mode" {
  description = "Map of resolution_mode values across all dns_zones, keyed the same as var.dns_zones except keys with no resolution_mode are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.resolution_mode if v.resolution_mode != null && length(v.resolution_mode) > 0 }
}
output "dns_zones_scope" {
  description = "Map of scope values across all dns_zones, keyed the same as var.dns_zones except keys with no scope are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.scope if v.scope != null && length(v.scope) > 0 }
}
output "dns_zones_self" {
  description = "Map of self values across all dns_zones, keyed the same as var.dns_zones except keys with no self are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.self if v.self != null && length(v.self) > 0 }
}
output "dns_zones_serial" {
  description = "Map of serial values across all dns_zones, keyed the same as var.dns_zones except keys with no serial are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.serial if v.serial != null }
}
output "dns_zones_state" {
  description = "Map of state values across all dns_zones, keyed the same as var.dns_zones except keys with no state are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.state if v.state != null && length(v.state) > 0 }
}
output "dns_zones_time_created" {
  description = "Map of time_created values across all dns_zones, keyed the same as var.dns_zones except keys with no time_created are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "dns_zones_version" {
  description = "Map of version values across all dns_zones, keyed the same as var.dns_zones except keys with no version are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.version if v.version != null && length(v.version) > 0 }
}
output "dns_zones_view_id" {
  description = "Map of view_id values across all dns_zones, keyed the same as var.dns_zones except keys with no view_id are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.view_id if v.view_id != null && length(v.view_id) > 0 }
}
output "dns_zones_zone_transfer_servers" {
  description = "Map of zone_transfer_servers values across all dns_zones, keyed the same as var.dns_zones except keys with no zone_transfer_servers are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.zone_transfer_servers if v.zone_transfer_servers != null && length(v.zone_transfer_servers) > 0 }
}
output "dns_zones_zone_type" {
  description = "Map of zone_type values across all dns_zones, keyed the same as var.dns_zones except keys with no zone_type are omitted"
  value       = { for k, v in oci_dns_zone.dns_zones : k => v.zone_type if v.zone_type != null && length(v.zone_type) > 0 }
}

