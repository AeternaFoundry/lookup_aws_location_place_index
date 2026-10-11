data "aws_location_place_index" "location_place_index_lookup" {
  for_each = var.location_place_index_lookup

  index_name = each.value.index_name
  region     = each.value.region
  tags       = each.value.tags
}

