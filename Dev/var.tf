variable "rg_name_x" {
    type = map(object({
        name = string
        location = string
    }))

}  

variable "acr_x" {
    type = map(object({
        name = string
        resource_group_name= string
        location = string
        sku = string
        admin_enabled = bool
    }))

} 

variable "stg_x" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "sql-server_x" {
  description = "Map of SQL Server configurations"
  type = map(object({
    name                         = string
    resource_group_name          = string
    location                     = string
    version                      = string
    administrator_login          = string
    administrator_login_password = string
    minimum_tls_version          = string
    tags                         = map(string)
  }))

}

variable "sql-database_x" {
  description = "Map of SQL Database configurations"
  type = map(object({
    name         = string
    server_id    = string
    max_size_gb  = number
    sku_name     = string
    enclave_type = string
    tags         = map(string)
  }))
}

variable "aks_cluster_x" {
    type = map(object({
        name                = string
        location            = string
        resource_group_name = string
        kubernetes_version  = string
        dns_prefix          = string
        default_node_pool   = map(object({
            name       = string
            node_count = number
            vm_size    = string
        }))
        network_profile     = map(object({
            network_plugin    = string
            network_policy    = string
            load_balancer_sku = string
        }))
    }))

}

variable "public_ip_x" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
    sku                 = string
  }))
}