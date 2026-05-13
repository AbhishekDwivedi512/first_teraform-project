output "resource_group_names" {
  value = [
    for rg in module.rg : rg.resource_group_name
  ]
}

output "vnet_names" {
  value = [
    for vnet in module.vnet : vnet.vnet_name
  ]
}

output "subnet_names" {
  value = [
    for subnet in module.subnet : subnet.subnet_name
  ]
}
output "peering_names" {
  value = module.peering.peering_names
}