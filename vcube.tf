provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAY3VVZYFYJ7NEXFMT"
  secret_key = "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"
}

resource "aws_instance" "web" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.small"
  key_name      = "Laptopkeypair"
  tags = {
    Name = "madhuterraform"
  }
}

# Create a bucket

resource "aws_s3_bucket" "b1" {

  bucket = "s3-terraform-bucket-lab-9-3-24"

  acl    = "private"   # or can be "public-read"

  tags = {

    Name        = "My bucket1"

    Environment = "Dev"

  }

}
