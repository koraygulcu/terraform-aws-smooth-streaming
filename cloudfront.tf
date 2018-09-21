resource "aws_cloudfront_origin_access_identity" "origin_access_identity" {
  comment = "Smooth Streaming origin access"
}

resource "aws_cloudfront_distribution" "s3_distribution" {
  origin {
    domain_name = "${aws_s3_bucket.origin.bucket_regional_domain_name}"
    origin_id   = "S3-${aws_s3_bucket.origin.id}"

    s3_origin_config {
      origin_access_identity = "${aws_cloudfront_origin_access_identity.origin_access_identity.cloudfront_access_identity_path}"
    }
  }
 
  enabled     = true
  price_class = "PriceClass_100"
  
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }
  
  default_cache_behavior {
    cached_methods         = ["HEAD", "GET"]
    allowed_methods        = ["HEAD", "GET", "OPTIONS"]
    target_origin_id       = "S3-${aws_s3_bucket.origin.id}"

    forwarded_values {
      query_string = false
      headers      = ["Access-Control-Allow-Methods", "Access-Control-Allow-Origin", "Origin"]

      cookies {
        forward = "none"
      }
    }

    viewer_protocol_policy = "allow-all"
    smooth_streaming       = true
  }
}

