provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "myec2" {
  // combine variable with count index to give specific naming
  name          = var.ec2_names[count.index]
  ami           = "ami-0b1e2eeb33ce3d66f"
  instance_type = "t2.micro"

  // duplicate instances
  count = 3
}
