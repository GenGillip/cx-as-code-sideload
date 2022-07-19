terraform {
  required_providers {
    genesyscloud = {
      source = "genesys.com/mypurecloud/genesyscloud"
      version="0.1.0"
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
}

module "classifier_emailproject" {
  source = "./modules/email_route"
}

module "classifier_queues" {
  source = "./modules/routing_queue"
}
