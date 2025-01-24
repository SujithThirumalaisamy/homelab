resource "helm_release" "nginx_ingress" {
  name       = "nginx-ingress-controller"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"

  set = [
    {
      name  = "service.type"
      value = "ClusterIP"
    },
    {
      name  = "controller.publishService.enabled"
      value = "true"
    }
  ]
}
