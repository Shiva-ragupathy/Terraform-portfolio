# Terraform-portfolio
The Terraform-portfolio project by Shiva Ragupathy is designed to automate the deployment of a static portfolio website on AWS using Terraform. It provisions an S3 bucket configured for static website hosting and uploads essential web assets like index.html, error.html, and a profile image.This project serves as a practical example of Infrastructure as Code (IaC) using Terraform, ideal for beginners aiming to understand AWS resource provisioning and static site hosting.
# 📁 Project Structure
 terraform-portfolio/
├── main.tf                          # Defines AWS S3 bucket and website hosting configurations
├── provider.tf                      # Specifies the AWS provider and region
├── output.tf                        # Outputs the website endpoint URL
├── index.html                       # Main HTML file for the portfolio
├── error.html                       # Custom error page displayed on errors
├── profile.jpeg                     # Profile image used in the portfolio
├── .gitignore                       # Specifies files to ignore in version control
├── terraform.tfstate                # Tracks the current state of infrastructure
├── terraform.tfstate.backup         # Backup of the Terraform state file
└── .terraform.lock.hcl              # Locks Terraform provider versions

# ✅ Prerequisites 
Before deploying this project, ensure you have the following installed and configured:

Terraform: Install Terraform from the official website.

AWS CLI: Install the AWS Command Line Interface from the official website.

AWS Account: An AWS account with an IAM user having sufficient permissions to create S3 buckets and configure website hosting.

AWS Credentials: Configure your AWS credentials using the AWS CLI:  

                   Aws Configure
# 🚀 Deployment Steps
Follow these steps to deploy the portfolio website:
1.) Initialize Terraform: This command initializes the working directory containing Terraform configuration files.

                   terraform init
2.) Review the Execution Plan:
The plan command creates an execution plan, which lets you preview the changes that Terraform plans to make to your infrastructure.

                   terraform plan
3.) Apply the Configuration:

This command applies the changes required to reach the desired state of the configuration.

                  terraform apply
            
4.) Access the Deployed Website:

After successful deployment, Terraform will output the website endpoint URL. Open this URL in your browser to view your portfolio website.

5.) 🧹 Clean Up Resources

                  terraform destroy
