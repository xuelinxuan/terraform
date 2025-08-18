resource "aws_s3_bucket" "dl" {
#如果重名了就重新取一个
  bucket = "datalake-linxuanxue-tf"
  acl    = "private"

  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}


resource "aws_s3_bucket" "stream" {
  bucket = "linxuan-stream-bucket"
  acl    = "private"

  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
