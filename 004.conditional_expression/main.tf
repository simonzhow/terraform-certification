provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "dev" {
  ami           = "ami-0b1e2eeb33ce3d66f"
  instance_type = "t2.micro"
  count         = var.istest == true ? 1 : 0
}

resource "aws_instance" "prod" {
  ami           = "ami-0b1e2eeb33ce3d66f"
  instance_type = "t2.large"
  count         = var.istest == false ? 1 : 0
}
