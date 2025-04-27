# Create S3 bucket
variable "demobucket" {
  default = "terraformbucket-shiva"
}

resource "aws_s3_bucket" "Demo_Bucket" {
  bucket = var.demobucket
}

# S3 bucket ownership controls
resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.Demo_Bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# S3 bucket public access block
resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.Demo_Bucket.id

  block_public_acls       = false  # Allow public ACLs
  block_public_policy     = false  # Allow public policies
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# Add a bucket policy to allow public read access
resource "aws_s3_bucket_policy" "public_read" {
  bucket = aws_s3_bucket.Demo_Bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "s3:GetObject"
        Effect    = "Allow"
        Resource  = "arn:aws:s3:::${aws_s3_bucket.Demo_Bucket.bucket}/*"
        Principal = "*"
      },
    ]
  })
}

# Create an S3 object for index.html without ACLs
resource "aws_s3_object" "index" {
  bucket      = aws_s3_bucket.Demo_Bucket.id
  key         = "index.html"
  source      = "index.html"
  content_type = "text/html"
}

# Create an S3 object for error.html without ACLs
resource "aws_s3_object" "error" {
  bucket      = aws_s3_bucket.Demo_Bucket.id
  key         = "error.html"
  source      = "error.html"
  content_type = "text/html"
}

# Create an S3 object for profile.jpeg without ACLs
resource "aws_s3_object" "profile" {
  bucket      = aws_s3_bucket.Demo_Bucket.id
  key         = "profile.jpeg"
  source      = "profile.jpeg"
}

# Create an S3 bucket website configuration
resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.Demo_Bucket.id
  
  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}
