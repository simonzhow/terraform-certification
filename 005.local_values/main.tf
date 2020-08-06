provider "aws" {
  region     = "ap-southeast-1"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

locals { // used to avoid repeating same values or expressions multiple times in configuration
  common_tags = {
    Owner   = "DevOps Team"
    service = "backend"
  }

  name_prefix = "${var.name != "" ? var.name : var.default}"
}

resource "aws_instance" "app-dev" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_instance" "db-dev" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.small"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "db_ebs" {
  availability_zone = "us-west-2a"
  size              = 8
  tags              = local.common_tags
}
