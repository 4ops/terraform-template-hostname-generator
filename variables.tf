variable "prefix" {
  type = string

  description = <<-EOT
    Required.
    Prefix of server name.
  EOT
}

variable "domain" {
  type = string

  default = ""

  description = <<-EOT
    Added to the fqdn when generating.
  EOT
}

variable "servers" {
  type = number

  default = 0

  description = <<-EOT
    Number of names to generate.
  EOT
}

variable "random_id" {
  type = bool

  default = true

  description = <<-EOT
    Use random generated ID in server name.
    If `false`, numbers used as server ID.
  EOT
}

variable "random_id_length" {
  type = number

  default = 5

  description = <<-EOT
    Generates random value as server ID.
    If `false` numbered ID used.
  EOT
}

variable "number_id_format" {
  type = string

  default = "%02d"

  description = <<-EOT
    Format of numbered server's id.
    Ignored when `random-id` is `true`
  EOT
}
