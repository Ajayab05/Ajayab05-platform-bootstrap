resource "aws_kms_key" "terraform_state" {
  description             = "Terraform state encryption key"
  deletion_window_in_days = 30
  enable_key_rotation     = true

  tags = {
    Name = "terraform-state-key"
  }
}

resource "aws_kms_alias" "terraform_state" {
  name          = "alias/${var.environment}-terraform-state"
  target_key_id = aws_kms_key.terraform_state.key_id
}