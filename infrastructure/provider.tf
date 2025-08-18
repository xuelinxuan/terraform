provider "aws" {
  region = var.aws_region
}

# 如需远程状态（S3 backend），请手动创建 bucket 并取消注释以下内容
# terraform {
#   backend "s3" {
#     bucket = "terraform-state-igti-ney"
#     key    = "state/igti/edc/mod1/terraform.tfstate"
#     region = "us-east-2"
#   }
# }
