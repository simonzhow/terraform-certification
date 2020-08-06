provider "aws" { // specify version explicitly to prevent breaking changes in newer updates
  region     = "us-west-2"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "myec2" {
  ami           = "ami-0b1e2eeb33ce3d66f"
  instance_type = "t2.micro"
}


# resource "aws_eip" "lb" {
#   vpc = true
# }

# output "eip" {
#   value = aws_eip.lb.public_ip
# }

# resource "aws_s3_bucket" "mys3" {
#   bucket = "kplabs-simon-demo-001"
# }

# output "mys3bucket" {
#   value = aws_s3_bucket.mys3.bucket_domain_name
# }

# resource "aws_instance" "myec2" {
#   ami           = "ami-0b1e2eeb33ce3d66f"
#   instance_type = "t2.micro"
#   security_groups = [
#     "default",
#   ]
# }

/*
Notes

- terraform init must be called whenever a new provider is declared (that hasn't been installed previously)
- terraform refresh updates current state in state file (but does not change desired declared state)
- terraform show displays contents of tfstate files in readable format (to transfer over to declaration if need be)
- terraform fmt formats in HCL
- terraform validate helps to validate variables, invalid properties, etc.

- whenever you make manual changes (in console) not defined in desired state, terraform will not show anything => BE EXPLICIT IN RESOURCE DEFINITION

Questions

- current state vs desired state in production environments (how to reconcile?)
*/
