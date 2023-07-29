module "cluster" {
  source = "./modules/gkecluster"
  vpc = module.network.vpc.self_link
  privatesub = module.network.pvtsub.self_link
}