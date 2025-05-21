# Terraform Portfolio Website

## 🌐 Overview

This project automates the deployment of a static portfolio website on AWS using Terraform. It provisions an S3 bucket configured for static website hosting and uploads web assets like `index.html`, `error.html`, and a profile image.:contentReference[oaicite:56]{index=56}

## 📁 Project Structure

:contentReference[oaicite:58]{index=58}:contentReference[oaicite:60]{index=60}
terraform-portfolio/
├── main.tf                 # Defines AWS S3 bucket and website hosting configurations
├── provider.tf             # Specifies the AWS provider and region
├── output.tf               # Outputs the website endpoint URL
├── index.html              # Main HTML file for the portfolio
├── error.html              # Custom error page displayed on errors
├── profile.jpeg            # Profile image used in the portfolio
├── .gitignore              # Specifies files to ignore in version control
├── terraform.tfstate       # Tracks the current state of infrastructure
├── terraform.tfstate.backup# Backup of the Terraform state file
└── .terraform.lock.hcl     # Locks Terraform provider versions

## ✅ Prerequisites

:contentReference[oaicite:62]{index=62}:contentReference[oaicite:64]{index=64}

## 🚀 Deployment Steps

:contentReference[oaicite:66]{index=66}:contentReference[oaicite:68]{index=68}

## 🧹 Clean Up Resources

:contentReference[oaicite:70]{index=70}:contentReference[oaicite:72]{index=72}

## 📄 License

:contentReference[oaicite:74]{index=74}:contentReference[oaicite:76]{index=76}

## 🙌 Acknowledgements

:contentReference[oaicite:78]{index=78}:contentReference[oaicite:80]{index=80}

