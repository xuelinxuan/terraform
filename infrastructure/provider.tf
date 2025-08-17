provider "aws" {
  region = var.aws_region
}

# 未来文件的内容都写在key这个路径下，这里都是可以自定义的
# Centralizar o arquivo de controle de estado do terraform
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-ney"
    key    = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-east-2"
  }
}
