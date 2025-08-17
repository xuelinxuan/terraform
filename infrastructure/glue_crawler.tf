#Glue 就像一个“桥梁 + 管理层”：负责把存储在 S3 上的数据变成“数据库表”的样子，
#这样外部工具（Athena、Spark、Redshift、EMR 等）就能像查询数据库一样去读取这批数据。
#aws_iam_role.glue_role.arn	✅ 必须自己创建/提供	Glue 爬虫要使用的 IAM 角色（用于访问 S3 权限）
#s3_target.path	✅ 要确认	要扫描的 S3 路径是不是你实际的 bucket 路径，例如：s3://igti-ney-streaming-bucket/firehose/


resource "aws_glue_catalog_database" "stream" {
  name = "streamingdb"
}

resource "aws_glue_crawler" "stream" {
  database_name = aws_glue_catalog_database.stream.name
  name          = "firehose_stream_s3_crawler"
  role          = aws_iam_role.glue_role.arn

  s3_target {
    path = "s3://${aws_s3_bucket.stream.bucket}/firehose/"
  }

  configuration = <<EOF
{
   "Version": 1.0,
   "Grouping": {
      "TableGroupingPolicy": "CombineCompatibleSchemas" }
}
EOF

  tags = {
    IES   = "IGTI",
    CURSO = "EDC"
  }
}
