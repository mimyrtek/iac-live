resource "kubernetes_namespace" "sandbox" {
  metadata {
    name = "sandbox-dev"
  }
}

resource "kubernetes_config_map" "proof" {
  metadata {
    name      = "iac-proof"
    namespace = kubernetes_namespace.sandbox.metadata[0].name
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
