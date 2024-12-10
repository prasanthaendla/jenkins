provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAWCZC5XITXRGQNJG5"
  secret_key = "6nLmrgs4b70KXperhr9aCW+uTFcA7NJUzZnHCAHKu"
}

resource "aws_db_instance" "myoracle" {
  identifier           = "myoracle"
  allocated_storage    = 200
  db_name              = "myoracle"
  engine               = "oracle-se2"
  engine_version       = "19.0.0.0.ru-2022-04.rur-2022-04.r1"
  license_model        = "bring-your-own-license"
  instance_class       = "db.t3.small"
  username             = "admin"
  password             = "Welcome123"
  backup_retention_period = 7
  skip_final_snapshot  = true
  publicly_accessible = true
}

resource "aws_db_instance" "myoracle2" {
  identifier           = "myoracle2"
  allocated_storage    = 200
  db_name              = "moracle2"
  engine               = "oracle-ee"
  engine_version       = "19.0.0.0.ru-2023-01.rur-2023-01.r1"
  license_model        = "bring-your-own-license"
  instance_class       = "db.t3.small"
  username             = "admin"
  password             = "Welcome123"
  backup_retention_period = 7
  skip_final_snapshot  = true
  publicly_accessible = true
}

# resource "aws_db_instance" "mysql" {
#   identifier           = "mysql"
#   allocated_storage    = 20
#   db_name              = "mydb"
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t3.micro"
#   username             = "foo"
#   password             = "foobarbaz"
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
#   publicly_accessible = true
# }
# resource "aws_db_instance" "mypost" {
#   identifier                = "mypost"
#   engine                    = "postgres"
#   instance_class            = "db.t3.micro"
#   allocated_storage         = 50
#   storage_type              = "gp2"
#   username                  = "postgres"
#   password                  = "Welcome123"
#   db_name                   = "postgres"
#   backup_retention_period   = 7
#   backup_window             = "02:00-03:00"
#   maintenance_window        = "mon:03:00-mon:04:00"
#   multi_az                  = false
#   skip_final_snapshot       = true
#   publicly_accessible       = true
# }
