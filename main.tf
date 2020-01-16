module "big_query" {
  source          = "./modules/big_query"

  dataset_id = var.dataset_id
  dataset_name = var.dataset_name
  description = var.description
  project_id = var.project_id
}
