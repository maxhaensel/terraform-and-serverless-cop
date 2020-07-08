resource "aws_s3_bucket" "bucket" {
  acl    = "private"
}



















resource "aws_ssm_parameter" "b" {
  name  = "bucket-name"
  type  = "String"
  value = aws_s3_bucket.bucket.id
}
