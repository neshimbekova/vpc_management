output "bucketname" {
  value = "${aws_s3_bucket.newbucket.bucket}"
}

output "instance_ip" {
  value = "${aws_instance.web.*.public_ip}"
}
