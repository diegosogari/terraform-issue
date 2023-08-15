module "with_output" {
  for_each = toset(["1"])
  source   = "./with-output"
}

module "no_output" {
  for_each = toset(["1"])
  source   = "./no-output"
}

output "with_output" {
  value = [for key, _ in module.with_output : key]
}

output "no_output" {
  value = [for key, _ in module.no_output : key]
}