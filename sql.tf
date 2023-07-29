module "sqldb" {
  source = "./modules/sqldatabase"
  private_vpc = module.network.vpc.self_link
  sqldb = "sqldata"
}