provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "terrabackendassignment"
    key            = "terraform-state"
    region         = "us-east-1"
  }
}
resource "aws_instance" "app_server" {
  ami           = "ami-06eecef118bbf9259"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}