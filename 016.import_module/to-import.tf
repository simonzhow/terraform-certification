resource "aws_instance" "myec2" {
  # config details here
}

/********************************
terraform init
terraform import aws_instance.myec2 <instance-id>

This import will try to match the configuration we have declared above with the instance that was manually configured in AWS console
********************************/
