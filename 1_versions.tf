terraform {
   required_version = "~> 1.7.1" # Most Commonly Used

   required_providers {
     aws = { # local provider name
        source = "hashicorp/aws" # https://registry.terraform.io/hashicorp/aws
        version = "~> 5.32.1" # Version of the Provider
     }

   }
}

# This provider is for us-east-1
provider "aws" {
  # Extra Details
  profile = "default" 
  region = "us-east-1"
  access_key = "AKIA47CRXAJ552IQC7UB"
  secret_key = "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"
}



