variable "location_place_index_lookup" {
  description = <<EOT
Map of location_place_index_lookup, attributes below
Required:
    - index_name
Optional:
    - region
    - tags
EOT

  type = map(object({
    index_name = string
    region     = optional(string)
    tags       = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.location_place_index_lookup : (
        length(v.index_name) >= 1 && length(v.index_name) <= 100
      )
    ])
    error_message = "must be between 1 and 100 characters"
  }
}

