provider "aws" {
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

// terraform taint aws_instance.myec2 will mark instance in state file as tainted
// net net, don't change infrastructure settings outside of IaC
resource "aws_instance" "myec2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
}
