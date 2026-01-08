terraform {
  backend "s3" {
    bucket = "tfstate"
    key    = "dev/sandbox/terraform.tfstate"

    # MinIO (S3-compatible) in-cluster
    endpoint = "http://minio-tfstate.tf-state.svc.cluster.local:9000"
    region   = "us-east-1"

    # MinIO/S3 compatibility flags
    force_path_style            = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true

    # If you later add TLS in front of MinIO, flip this to false and use https://
    insecure = true
  }
}
