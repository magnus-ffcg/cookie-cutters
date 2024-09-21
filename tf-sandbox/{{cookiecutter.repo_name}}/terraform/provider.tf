# This is a terraform provider configuration for Google Cloud Platform.
# It is used to authenticate with Google Cloud Platform and to create resources in Google Cloud Platform.
# You can modify this file and add other providers if you want to.

# In order to use this provider, you need to have a service account with the "Owner" role in the project. 
# The user executing the terraform commands needs to have the "Service Account Token Creator" role on the service account you are impersonating.

 # Here you configure the versions of the providers that you are using.
 # There might be a need to update the versions of the providers to the latest ones.
 
terraform {
 
  required_version = "~> 1.8.3" 

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.80.0" 
    }
    google-beta = {
      source = "hashicorp/google-beta"
      version = "4.80.0"
    }
  }

  # This is the backend configuration for the Terraform state. 
  #You dont need to change this as it is already configured in env/sbx.config
  backend "gcs" {
  }
}

# This is the provider configuration for the Google Cloud Platform impersonation.

provider "google" { 
  alias = "impersonation" 
  scopes = [ 
     "https://www.googleapis.com/auth/cloud-platform", 
     "https://www.googleapis.com/auth/userinfo.email", 
   ] 
}

provider "google" {
  project         = var.project
  impersonate_service_account = var.impersonate_service_account
  request_timeout = "120s"
}

provider "google-beta" {
  project         = var.project
  impersonate_service_account = var.impersonate_service_account
  request_timeout = "120s"
}
