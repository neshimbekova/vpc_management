terraform {
  backend "s3" {
    bucket = "terraform-state-january-kuku"
    key    = "insfra.state"
    region = "eu-west-1"
  }
}
