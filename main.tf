provider "aws"
   region = "ap-south-1"

resource "aws_s3_bucket" "example" {
   bucket = "adhi-bucket"

   tags = {
	Name	= "My bucket"
	}
} 
