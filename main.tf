data "terraform_remote_state" "project-and-networks" {
  backend = "remote"
  config = {
    organization = "AFRLDigitalMFG"
    workspaces = {
      name = "shared_vpc_projects"
    }
  }
}

resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = var.dataset_id
  project                     = data.terraform_remote_state.project-and-networks.outputs.afrl-big-data-project-id
  friendly_name               = var.dataset_name
  description                 = var.description
  location                    = var.location
  default_table_expiration_ms = var.default_table_expiration_ms

  labels = {
    env = "afrl"
  }

  access {
    role          = "OWNER"
    group_by_email = var.bq_dataset_owner
  }
//  access {
//    role   = "READER"
//    domain = "example.com"
//  }
}