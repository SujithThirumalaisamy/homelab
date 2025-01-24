resource "kubernetes_namespace" "redis" {
  metadata {
    name = "redis"
  }
}

variable "redis_password" {
  type      = string
  sensitive = true
}

resource "helm_release" "redis" {
  name       = "redis"
  repository = "oci://registry-1.docker.io/bitnamicharts"
  chart      = "redis"

  set = [
    {
      name  = "replica.replicaCount"
      value = 3
    },
    {
      name  = "sentinel.enabled"
      value = true
    },
    {
      name  = "sentinel.quorum"
      value = 2
    },
    {
      name  = "global.redis.password"
      value = var.redis_password
    }
  ]
}
