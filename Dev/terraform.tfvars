rg_name_x = {  
  "rg1" = {
    name     = "jaydeep_rg1"
    location = "Central india"

  }
}

acr_x = {
  "acr_x" = {
    name = "acrtodoappjay"
    resource_group_name= "jaydeep_rg1"
    location = "central india"
    sku = "Basic"
    admin_enabled = true
    
  }
}

stg_x = {
  "stg1" = {
    name                     = "jaydeepstg321"
    resource_group_name      = "jaydeep_rg"
    location                 = "Central india"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

sql-server_x = {
  "sql-server" = {
    name                         = "jaydeep-sql-server"
    resource_group_name          = "jaydeep_rg1"
    location                     = "Central india"
    version                      = "12.0"
    administrator_login          = "jaydeepc1985"
    administrator_login_password = "Oneday@123"
    minimum_tls_version          = "1.2"
    tags = {
      environment = "dev"
      project     = "SQLProject"
    }
  }
}

sql-database_x = {
  "sql-database" = {
    name         = "jaydeep-sql-database"
    server_id    = "sql"
    max_size_gb  = 2
    sku_name     = "S0"
    enclave_type = "VBS"
    tags = {
      environment = "dev"
      project     = "SQLProject"
    }
  }
}

aks_cluster_x = {
  "aks_cluster" = {
    name                = "jaydeep-aks-cluster"
    location            = "Central india"
    resource_group_name = "jaydeep_rg1"
    kubernetes_version  = "1.32.2"
    dns_prefix          = "jaydeep-aks"
    default_node_pool   = {
      "nodepool1" = {
        name       = "k8vms"
        node_count = 3
        vm_size    = "Standard_A2_v2"
      }
    }
    network_profile     = {
      "networkprofile1" = {
        network_plugin    = "azure"
        network_policy    = "calico"
        load_balancer_sku = "standard"
      }
    }
  }
}

public_ip_x = {
  "pub-ip_bastion" = {
    name                = "todoapp-public-ip"
    resource_group_name = "jaydeep_rg1"
    location            = "Central india"
    allocation_method   = "Static"
    sku                 = "Standard"

  }
}
