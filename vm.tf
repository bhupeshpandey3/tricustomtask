module "vm" {
source = "./modules/vm"
private_subnet = module.network.pvtsub.self_link
private_vpc = module.network.vpc.self_link
machine = "e2-medium"
}