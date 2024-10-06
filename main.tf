provider "aws" {
  region     = "us-east-1"  # Usa la región que prefieras
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-bucket-desafio8"
  acl = "private"
}

terraform{
    backend "remote"{
        organization = "terraform-organization-DESAFIO8"

        workspaces {
            name = "terraform-organization-DESAFIO8"
        }
    }
}

