resource "aws_s3_bucket" "main-s3" {
  bucket = "s-furukawa.work"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}
