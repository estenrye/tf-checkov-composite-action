terraform {
  required_version = ">= 0.13"
  required_providers {
    http = {
      source = "hashicorp/aws"
      version = "5.89.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "acme_bucket" {
  bucket = "acme"
}