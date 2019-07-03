terraform {
  required_version = ">= 0.12.1"
}

module "hostname" {
  source    = "4ops/hostname-generator/template"
  version   = "1.0.0"
  prefix    = "my-prod-server"
  random_id = false
  servers   = 10
}
