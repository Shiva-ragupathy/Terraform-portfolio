Project structure
terraform-portfolio/
├── main.tf                 # Terraform configuration for AWS S3 bucket and website hosting
├── provider.tf             # AWS provider configuration
├── output.tf               # Outputs for the deployed resources
├── index.html              # Main HTML file for the portfolio
├── error.html              # Custom error page
├── profile.jpeg            # Profile image used in the portfolio
├── .gitignore              # Specifies files to ignore in version control
├── terraform.tfstate       # Terraform state file (auto-generated)
├── terraform.tfstate.backup # Backup of the Terraform state file (auto-generated)
└── .terraform.lock.hcl     # Terraform dependency lock file (auto-generated)
