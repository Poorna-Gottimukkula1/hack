
variable "ibmcloud_api_key" {
    description = "Denotes the IBM Cloud API key to use"
}

variable "ibmcloud_region" {
    description = "Denotes which IBM Cloud region to connect to"
    default     = "tok"
}

#INSERTED FOR MULTI-ZONE REGION SUCH AS FRANKFURT
variable "ibmcloud_zone" {
    description = "Denotes which IBM Cloud zone to connect to - .i.e: eu-de-1 eu-de-2  us-south etc."
    default     = "tok04"
}

variable "vm_name" {
    description = "Name of the VM"
    default     = "test-tf-pVM"
}

# Got the ID from `ibmcloud resource service-instances --long field` command, refer GUID for the instance
variable "power_instance_id" {
    description = "Power Virtual Server instance ID associated with your IBM Cloud account (note that this is NOT the API key)"
    default = "d5a6d89a-04e4-4aae-84d1-b785f4bd3b0f"
}

variable "memory" {
    description = "Amount of memory (GB) to be allocated to the VM"
    default     = "8"
}

variable "processors" {
    description = "Number of virtual processors to allocate to the VM"
    default     = "0.5"
}

variable "proc_type" {
    description = "Processor type for the LPAR - shared/dedicated"
    default     = "shared"
}

variable "ssh_key_name" {
    description = "SSH key name in IBM Cloud to be used for SSH logins"
    default     = "mkumatag-pub-key"
}

variable "shareable" {
    description = "Should the data volume be shared or not - true/false"
    default     = "true"
}

variable "pvs_network_name" {
    description = "List of networks that should be attached to the VM - Create this network before running terraform"
    default     = "DHCPSERVERe04658d613eb443786317f29c3069e0e_Private"
}

variable "system_type" {
    description = "Type of system on which the VM should be created - s922/e880"
    default     = "s922"
}

variable "image_name" {
    description = "Name of the image from which the VM should be deployed - IBM i image name"
    default     = "411.86.202208112105-0"
}

variable "replication_policy" {
    description = "Replication policy of the VM"
    default     = "none"
}

variable "replication_scheme" {
    description = "Replication scheme for the VM"
    default     = "suffix"
}

variable "replicants" {
    description = "Number of VM instances to deploy"
    default     = "1"
}

// dhcp network
variable "cluster_id" {
  type        = string
  description = "The ID created by the installer to uniquely identify the created cluster."
}

variable "machine_cidr" {
  type        = string
  description = "The machine network (IPv4 only)"
}

variable "dns_server" {
  type        = string
  description = "The desired DNS server for the DHCP instance to server."
  default     = "1.1.1.1"
}

variable "enable_snat" {
  type        = bool
  description = "Boolean indicating if SNAT should be enabled."
  default     = true
}

variable "transit_gateway_enabled" {
  type        = bool
  description = "Boolean indicating if Transit Gateways should be used."
  default     = false
}
