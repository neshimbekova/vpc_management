terraform {
  backend "s3" {
    bucket = "terraform-state-january-kuku"
    key    = "infra.state"
    region = "eu-west-1"
  }
}
