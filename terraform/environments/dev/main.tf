module "kms" {
  source      = "../../modules/kms"
  environment = var.environment
}

module "s3" {
  source      = "../../modules/s3"
  environment = var.environment
  kms_key_arn = module.kms.kms_key_arn
}

module "dynamodb" {
  source      = "../../modules/dynamodb"
  environment = var.environment
}