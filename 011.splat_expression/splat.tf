provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}
resource "aws_iam_user" "lb" {
  name  = "iamuser.${count.index}"
  count = 3
  path  = "/system/"
}

// splat (*) used to match all resources created (each of the 3 iam users)
output "arns" {
  value = aws_iam_user.lb[*].arn
}
