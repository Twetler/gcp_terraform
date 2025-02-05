locals {
  descriptions = jsondecode(file("${path.module}/descriptions.json"))
  config = jsondecode(file("${path.module}/config.json"))
}


resource "google_bigquery_dataset" "my_dataset" {
  dataset_id    = "my_dataset"
  friendly_name = "cute_namesies"
  description   = local.descriptions["my_dataset"]
  location      = "europe-west1"

  labels = {
    	project = "personal_project"
	env = "default"
  }

  access {
    role          = "OWNER"
    user_by_email = local.config["usermail"]
  }

}
