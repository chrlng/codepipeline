provider "aws" {
  region = "us-west-2"
}

resource "aws_glue_job" "example" {
  name     = "example"
  role_arn = "arn:aws:iam::288051765299:role/AWSGlueServiceRoleDefault"

  command {
    script_location = "s3://aws-glue-scripts-288051765299-us-west-2/christine_nguyenl@berkeley.edu/codepipeline-test-3"
  }
}
