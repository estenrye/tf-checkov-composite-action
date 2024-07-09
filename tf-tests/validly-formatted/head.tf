terraform {
  required_version = ">= 0.13"
  required_providers {
    http = {
      source = "hashicorp/http"
      version = "3.4.3"
    }
  }
}

provider "http" {
  # Configuration options
}

data "http" "example_head" {
  url    = "https://checkpoint-api.hashicorp.com/v1/check/terraform"
  method = "HEAD"
}

output "example_head" {
  value = data.http.example_head.headers
}