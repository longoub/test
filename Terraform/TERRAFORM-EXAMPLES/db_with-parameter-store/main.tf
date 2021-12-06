provider "aws" {
  region = "us-east-1"
}

variable "environment" {
    type = string
    default = "prod"
}

variable "db_user" {
  type = string
  default = "admin"
}

variable "db_password" {
  type = string
  default = "admin125"
}

resource "aws_ssm_parameter" "db_user" {
  name  = "/${var.environment}/db_user"
  type  = "String"
  value = var.db_user
}

resource "aws_ssm_parameter" "db_password" {
  name  = "/${var.environment}/db_password"
  type  = "String"
  value = var.db_password
}


data "aws_ssm_parameter" "db_password" {
  depends_on = [ 
    aws_ssm_parameter.db_user,
    aws_ssm_parameter.db_password
   ]

  name = "/${var.environment}/db_password"
}

data "aws_ssm_parameter" "db_user" {
  depends_on = [ 
    aws_ssm_parameter.db_user,
    aws_ssm_parameter.db_password
   ]

  name = "/${var.environment}/db_user"
}


resource "aws_db_instance" "mysql" {
  depends_on = [ 
    data.aws_ssm_parameter.db_password ,
    data.aws_ssm_parameter.db_user
   ]

  identifier = "demodb"

  engine            = "mysql"
  engine_version    = "5.7.19"
  instance_class    = "db.t2.micro"
  storage_type      = "standard"
  allocated_storage = 5

  name     = "demodb"
  username = data.aws_ssm_parameter.db_user.value
  password = data.aws_ssm_parameter.db_password.value
  port     = "3306"

  tags = {
    Name = "${var.environment}-mysql"
  }
}
