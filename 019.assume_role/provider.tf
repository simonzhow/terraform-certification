provider "aws" {
  region = "us-west-1"

  assume_role {
    role_arn     = ""
    session_name = "ANY_NAME"
  }
}

// set up identity account with single set of username and password (and do an assume role into each aws account)
