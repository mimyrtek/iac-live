terraform {
  backend "s3" {
    bucket = "tfstate"
    key    = "dev/sandbox/terraform.tfstate"
    region = "us-east-1"

    endpoints = {
      s3 = "http://minio-tfstate.tf-state.svc.cluster.local:9000"
    }

    # MinIO compatibility
    force_path_style = true
    insecure         = true

    # Prevent AWS lookups (STS/IAM/metadata)
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
  }
}
