/*variable "lk_server_api_key" {
  type      = string
  sensitive = true
}

variable "lk_server_api_secret" {
  type      = string
  sensitive = true
}*/

resource "kubernetes_namespace" "ns_livekit" {
  metadata {
    name = "livekit"
  }
}

resource "helm_release" "livekit" {
  name       = "livekit"
  repository = "https://helm.livekit.io"
  chart      = "livekit-server"
  namespace  = kubernetes_namespace.ns_livekit.metadata[0].name
  values = [
    templatefile("${path.module}/server-values.yml", {})
  ]
}
