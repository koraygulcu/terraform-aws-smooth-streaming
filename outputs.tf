output "cloudfront_domain_name" {
  description = "The domain name corresponding to the distribution. For example: d604721fxaaqy9.cloudfront.net."
  value       = ["${aws_cloudfront_distribution.s3_distribution.domain_name}"]
}

output "s3_bucket" {
  description = "The name of the bucket. For example: bucket.test.com"
  value       = ["${aws_s3_bucket.origin.id}"]
}
