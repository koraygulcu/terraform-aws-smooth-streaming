# AWS Smooth Streaming Terraform module

Terraform module that creates an origin for storing Smooth Streaming assets and a CloudFront distribution for streaming.
The following resources are created:
* S3 bucket that stores packaged assets privately
* CloudFront distribution for serving Smooth Streaming assets with CORS
* CloudFront origin access identity to access S3 files

## Usage

See examples directory.

## Usage

Feel free to submit issues and PRs.

