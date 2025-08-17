variable "aws_region" {
  default = "us-east-2"
}

variable "lambda_function_name" {
  default = "IGTIexecutaEMRaovivo"
}

# SSH 密钥对（Key Pair）名字
variable "key_pair_name" {
  default = "ney-igti-teste"
}
#登录 AWS 控制台：https://console.aws.amazon.com
#点击顶部导航中的 Services（服务） → 搜索并进入 VPC
#左侧菜单点击 Your VPCs

variable "airflow_subnet_id" {
  default = "subnet-4cef5427"
}

#需要去 AWS 后台查一下：
#打开 AWS 控制台（console）
#搜索进入 VPC 服务
#左侧点击 Your VPCs
#在列表中找到你想使用的那个 VPC，它的 ID 形式通常是：

variable "vpc_id" {
  default = "vpc-d724b4bc"
}
