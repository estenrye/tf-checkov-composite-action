terraform {
  required_version = ">= 0.13"
  required_providers {
    http = {
      source = "hashicorp/aws"
      version = "6.22.1"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "acme_bucket" {
  bucket = "acme"
}