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
}
