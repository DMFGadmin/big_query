module "bigquery" {
  source  = "terraform-google-modules/bigquery/google"
  version = "~> 3.0"

  dataset_id                  = var.dataset_id
  dataset_name                = var.dataset_name
  description                 = var.description
  project_id                  = var.project_id
  location                    = var.location
  default_table_expiration_ms = var.default_table_expiration_ms

//  tables = [
  ////  {
  ////    table_id          = "foo",
  ////    schema            =  "<PATH TO THE SCHEMA JSON FILE>",
  ////    time_partitioning = {
  ////      type                     = "DAY",
  ////      field                    = null,
  ////      require_partition_filter = false,
  ////      expiration_ms            = null,
  ////    },
  ////    expiration_time = null,
  ////    clustering      = ["fullVisitorId", "visitId"],
  ////    labels          = {
  ////      env      = "dev"
  ////      billable = "true"
  ////      owner    = "joedoe"
  ////    },
  ////  },
  ////  {
  ////    table_id          = "bar",
  ////    schema            =  "<PATH TO THE SCHEMA JSON FILE>",
  ////    time_partitioning = null,
  ////    expiration_time   = 2524604400000, # 2050/01/01
  ////    clustering        = [],
  ////    labels = {
  ////      env      = "devops"
  ////      billable = "true"
  ////      owner    = "joedoe"
  ////    }
  ////  ]
  dataset_labels = {
    env      = "dev"
    billable = "true"
  }
}