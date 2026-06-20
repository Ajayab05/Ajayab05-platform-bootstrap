output "kms_key_arn" {
  value = aws_kms_key.terraform_state.arn
}

output "kms_key_id" {
  value = aws_kms_key.terraform_state.key_id
}