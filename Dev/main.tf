module "rg" {
  source  = "../Resource-Group"
  rg_name = var.rg_name_x
}

module "abc" {
    source     = "../Storage"
    stg        = var.stg_x
    depends_on = [module.rg]
}

module "acr" {
  source     = "../ACR"
  acr       = var.acr_x
  depends_on = [module.rg]
}

module "sqlsrv" {
  source     = "../SQL-SVR"
  sql-server = var.sql-server_x
  depends_on = [module.rg]
}

module "sqldb" {
  source       = "../SQL-DB"
  sql-database = var.sql-database_x
  depends_on   = [module.sqlsrv]
}

module "aks_cluster" {
  source     = "../AKS-cluster"
  aks_cluster = var.aks_cluster_x
  depends_on = [module.rg]
}