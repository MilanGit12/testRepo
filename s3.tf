provider "aws" {
    region = "${var.region}"
}

module "s3" {
    bucket_name = "test"       
}

resource "aws_s3_bucket" "temps3" {
    bucket = "${var.bucket_name}" 
    acl = "${var.acl_value}"   
}