output "website_endpoint" {
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
  description = "Website endpoint"
}

output "bucket_name" {
  value       = aws_s3_bucket.website.id
  description = "Name of the bucket"
}

output "bucket_arn" {
  value       = aws_s3_bucket.website.arn
  description = "ARN of the bucket"
}

