resource "aws_s3_bucket"  "my_bucks" {
#   count  = length(var.s3_buckets_names)
  bucket = "my_testing"
  acl    = "private"
}

