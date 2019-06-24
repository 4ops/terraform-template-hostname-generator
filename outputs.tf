output "name" {
  value = data.template_file.name[*].rendered
}

output "fqdn" {
  value = data.template_file.fqdn[*].rendered
}
