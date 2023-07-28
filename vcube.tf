provider "aws"{
  region ="us-east-1"
  access key="AKIAY3VVZYFYAYSKE3I2"
  secretkey="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"
}

resource "aws_instance" "web"{
  ami="ami-0989fb15ce71ba39e"
  instance_type=t2.micro"
  key_name="Rahmankeypair"
  tags={
    Name="Terraform"
    
#create a bucket
resource "aws_s3_bucket" "b1"{
bucket="s3-terraform-bucket-lab-7-15-2023-1"
acl ="provate" 
}

#upload a object

resource "aws_s3_bucket_object" "file1"{
bucket =aws_s3_bucket.b1.id
key="vcube1048am"
acl="private" 
source="/root/vcube/hello.txt"
etag-filemd5("/root/vcube/hello.txt")
}
