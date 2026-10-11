variable "dns_zones" {
  description = <<EOT
Map of dns_zones, attributes below
Required:
    - compartment_id
    - name
    - zone_type
Optional:
    - defined_tags
    - dnssec_state
    - freeform_tags
    - resolution_mode
    - scope
    - view_id
    - external_downstreams (block):
        - address (required)
        - port (optional)
        - tsig_key_id (optional)
    - external_masters (block):
        - address (required)
        - port (optional)
        - tsig_key_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id  = string
    name            = string
    zone_type       = string
    defined_tags    = optional(map(string))
    dnssec_state    = optional(string)
    freeform_tags   = optional(map(string))
    resolution_mode = optional(string)
    scope           = optional(string)
    view_id         = optional(string)
    external_downstreams = optional(list(object({
      address     = string
      port        = optional(number)
      tsig_key_id = optional(string)
    })))
    external_masters = optional(list(object({
      address     = string
      port        = optional(number)
      tsig_key_id = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dns_zones : (
        contains(["PRIMARY", "SECONDARY"], v.zone_type)
      )
    ])
    error_message = "must be one of: \"PRIMARY\", \"SECONDARY\""
  }
}

