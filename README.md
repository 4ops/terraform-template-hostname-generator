# Hostname generator

[![CircleCI](https://circleci.com/gh/4ops/terraform-template-hostname-generator.svg?style=svg)](https://circleci.com/gh/4ops/terraform-template-hostname-generator)

Generates unique hostnames with format `<prefix>-<id>`.

## Requirements

- Terraform version 0.12.1+

## Providers

- random >= 2.1
- template >= 2.1

## Attributes

- `name` - List of unique hostnames
- `fqdn` - List of fqdn (format: `<name>.<domain>`)

## Arguments

See `variables.tf`

## Example

See `example/`

Example outputs:

- When `var.random_id` = true

```HCL
Outputs:

fqdn = [
  "my-prod-server-97c93f53a1.example.com",
  "my-prod-server-68bd75680c.example.com",
  "my-prod-server-eb83fe09e3.example.com",
  "my-prod-server-49cc3276f5.example.com",
  "my-prod-server-7b67b3e324.example.com",
  "my-prod-server-db157d290b.example.com",
  "my-prod-server-b83c78e362.example.com",
  "my-prod-server-1e4357b92d.example.com",
  "my-prod-server-81f64abe5a.example.com",
  "my-prod-server-b17d12ac02.example.com",
]
name = [
  "my-prod-server-97c93f53a1",
  "my-prod-server-68bd75680c",
  "my-prod-server-eb83fe09e3",
  "my-prod-server-49cc3276f5",
  "my-prod-server-7b67b3e324",
  "my-prod-server-db157d290b",
  "my-prod-server-b83c78e362",
  "my-prod-server-1e4357b92d",
  "my-prod-server-81f64abe5a",
  "my-prod-server-b17d12ac02",
]
```

- When `var.random_id` = false

```HCL
Outputs:

fqdn = [
  "my-prod-server-01.example.com",
  "my-prod-server-02.example.com",
  "my-prod-server-03.example.com",
  "my-prod-server-04.example.com",
  "my-prod-server-05.example.com",
  "my-prod-server-06.example.com",
  "my-prod-server-07.example.com",
  "my-prod-server-08.example.com",
  "my-prod-server-09.example.com",
  "my-prod-server-10.example.com",
]
name = [
  "my-prod-server-01",
  "my-prod-server-02",
  "my-prod-server-03",
  "my-prod-server-04",
  "my-prod-server-05",
  "my-prod-server-06",
  "my-prod-server-07",
  "my-prod-server-08",
  "my-prod-server-09",
  "my-prod-server-10",
]
```
