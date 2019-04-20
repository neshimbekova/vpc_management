resource "aws_s3_bucket" "newbucket" {
  bucket = "terraform-kuku"

  tags {
    name       = "terraform-kuku"
    env        = "dev"
    dept       = "it"
    created_by = "nurzhamal"
  }
}
