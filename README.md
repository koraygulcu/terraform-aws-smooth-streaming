# AWS Smooth Streaming Terraform module

Terraform module that creates an origin for storing Smooth Streaming assets and a CloudFront distribution for streaming.
The following resources are created:
* S3 bucket that stores packaged assets privately
* CloudFront distribution for serving Smooth Streaming assets with CORS
* CloudFront origin access identity to access S3 files

## Usage

See examples directory.

Before destroying the resources, make sure all the files in the S3 bucket are deleted.

## Feedback

Feel free to submit issues and PRs.

