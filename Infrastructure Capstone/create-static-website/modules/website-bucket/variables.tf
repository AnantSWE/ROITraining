variable "bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to resources"
  default     = {}
}

variable "index_content" {
  type        = string
  description = "Content for index.html"
  default     = <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h1>Welcome to Space Invaders!</h1>
</body>
</html>
EOF
}

variable "error_content" {
  type        = string
  description = "Content for error.html"
  default     = <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <h1>Error: Page not found</h1>
</body>
</html>
EOF
}

