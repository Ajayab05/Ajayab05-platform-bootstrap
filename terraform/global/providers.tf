provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "Platform"
      ManagedBy   = "Terraform"
      Environment = var.environment
    }
  }
}