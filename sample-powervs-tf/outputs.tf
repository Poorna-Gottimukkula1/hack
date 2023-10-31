
output "dhcp_id" {
  value = data.ibm_pi_dhcp.dhcp_service.dhcp_id
}

output "dhcp_network_id" {
  value = data.ibm_pi_dhcp.dhcp_service.network_id
}
output "status" {
    value = ibm_pi_instance.pvminstance.status
}

output "min_proc" {
    value = ibm_pi_instance.pvminstance.min_processors
}

output "health_status" {
    value = ibm_pi_instance.pvminstance.health_status
}

output "addresses" {
    value = ibm_pi_instance.pvminstance.pi_network
}

output "progress" {
    value = ibm_pi_instance.pvminstance.pi_progress
}
