provider "aws" {
  region = var.aws_region
}

resource "random_string" "name_suffix" {
  length    = 6
  special   = false
  upper     = false
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = local.aws_s3_bucket_name
     
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
    bucket = aws_s3_bucket.terraform_state.id

    versioning_configuration {
      status = "Enabled"
    }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = var.aws_dynamodb_table_name
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}