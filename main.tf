module "network" {
  source     = "./modules/network"
  project_id = var.project_id
  region     = var.region
  depends_on = [module.product_services]
}

module "instance" {
  source        = "./modules/instance"
  project_id    = var.project_id
  region        = var.region
  network_id    = module.network.network_id
  subnetwork_id = module.network.subnetwork_id
  zone          = var.zone
  depends_on = [module.product_services]
}

module "product_services" {
  source     = "./modules/product_services"
  project_id = var.project_id

}