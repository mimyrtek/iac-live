resource "kubernetes_config_map" "proof" {
  metadata {
    name      = "iac-proof"
    namespace = "jenkins-dev"  # or "sandbox-dev" if pre-created
  }

  data = {
    message   = "Hello from Terraform via Jenkins + MinIO backend"
    env       = "dev"
    timestamp = timestamp()
  }
}

output "configmap_name" {
  value = kubernetes_config_map.proof.metadata[0].name
}
