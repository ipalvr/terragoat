provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "docking_bay" {
  bucket_prefix = "docking-bay-storage-"

  tags = {
    Name                 = "Docking Bay"
    Environment          = "Dev"
    git_commit           = "28b70f41e8764823d8d5a7d566490d120a026782"
    git_file             = "simple_instance/s3.tf"
    git_last_modified_at = "2022-02-02 18:38:38"
    git_last_modified_by = "32229201+ipalvr@users.noreply.github.com"
    git_modifiers        = "32229201+ipalvr"
    git_org              = "ipalvr"
    git_repo             = "terragoat"
    yor_trace            = "58fd9c4c-4ffb-428f-aee6-3bc159ef436d"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
}


resource "aws_s3_bucket" "docking_bay_log_bucket" {
  bucket = "docking_bay-log-bucket"
  tags = {
    yor_trace = "8e5b9ba9-8c1c-4106-bf31-9390439eeb51"
  }
}

resource "aws_s3_bucket_logging" "docking_bay" {
  bucket = aws_s3_bucket.docking_bay.id

  target_bucket = aws_s3_bucket.docking_bay_log_bucket.id
  target_prefix = "log/"
}



resource "aws_s3_bucket_versioning" "docking_bay" {
  bucket = aws_s3_bucket.docking_bay.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_versioning" "docking_bay" {
  bucket = aws_s3_bucket.docking_bay.id

  versioning_configuration {
    status = "Enabled"
  }
}