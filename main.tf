terraform {
  required_version = ">= 0.12.1"

  required_providers {
    random   = ">= 2.1"
    template = ">= 2.1"
  }
}

resource "random_id" "id" {
  count       = var.random_id ? var.servers : 0
  byte_length = var.random_id_length
}

data "template_file" "name" {
  count    = var.servers
  template = "$${prefix}-$${id}"

  vars = {
    prefix = lower(var.prefix)
    id     = var.random_id ? random_id.id[count.index].hex : format(var.number_id_format, count.index + 1)
  }
}

data "template_file" "fqdn" {
  count    = var.servers
  template = "$${name}$${domain}"

  vars = {
    name   = data.template_file.name[count.index].rendered
    domain = var.domain == "" ? "" : ".${var.domain}"
  }
}
