# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


// after writing the code save it ( ctrl + s )

// go to the file in the VS code --> enable the auto save

// backend FAQ 5/5  

terraform {
  backend "s3" {
    bucket         = "terraform-bucket-2507"
    key            = "path/s3statefile/terrafrom.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-statelock-2607"
  }
}

