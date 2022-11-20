provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6KQYEHKNMUGI6UU6"
  secret_key = "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"
}

#1 -this will create a S3 bucket in AWS
resource "aws_s3_bucket" "terraform_state_s3" {
  #make sure you give unique bucket name
  bucket = "terraform-teknobucket1-state" 
  force_destroy = true
# Enable versioning to see full revision history of our state files
  versioning {
         enabled = true
        }
}

