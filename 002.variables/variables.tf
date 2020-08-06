variable "vpn_ip" {
  default = "116.50.30.50/32"
}

variable "instancetype" {
  type    = string // be explicit about type...
  default = "t2.micro"
}

// list and maps
variable "list" {
  type    = list
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "map" {
  type = map
  default = {
    us-west-1  = "t2.micro"
    us-west-2  = "t2.nano"
    ap-south-1 = "t2.small"
  }
}
