resource "aws_s3_bucket" "demo_buk" {
  bucket = "my-terraform-buk-0608"

  tags = {
    Name        = "My-bucket"
    Environment = "Dev"
  }
}


resource "aws_s3_bucket_acl" "buck_acl" {
  bucket = aws_s3_bucket.demo_buk.id
  acl    = "private"
}

// versioning enable
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.demo_buk.id
  versioning_configuration {
    status = "Enabled"
  }
}