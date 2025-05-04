provider "aws" {
  region = var.aws_region
}

module "website-bucket" {
  source = "../modules/website-bucket"

  bucket_name = var.bucket_name
  tags        = var.tags

  index_content = file("${path.module}./content/index.html")
  error_content = file("${path.module}./content/error.html")
}

resource "null_resource" "run_script" {
    provisioner "local-exec" {
        command = "aws s3 sync s3://space-invaders-source s3://${module.website-bucket.bucket_id}"
    }
}


output "website_url" {
  value = "http://${module.website-bucket.website_endpoint}"
}

