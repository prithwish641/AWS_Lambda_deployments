terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
		}
	}

	backend "remote" {
		hostname = "app.terraform.io"
		organization = "POC_AWS_123"

		workspaces {
			name = "POC_AWS_123"
		}
	}
}

provider "random" {}

provider "aws" {
	region = "us-east-1"
}



