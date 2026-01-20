resource "helm_release" "elasticsearch" {
  name             = "elasticsearch"
  repository       = "https://helm.elastic.co"
  chart            = "elasticsearch"
  namespace        = "logging"
  create_namespace = true

  values = [
    file("../helm-values/elasticsearch-values.yaml")
  ]
}

resource "helm_release" "kibana" {
  name       = "kibana"
  repository = "https://helm.elastic.co"
  chart      = "kibana"
  namespace  = "logging"

  values = [
    file("../helm-values/kibana-values.yaml")
  ]

  depends_on = [helm_release.elasticsearch]
}

resource "helm_release" "fluent_bit" {
  name       = "fluent-bit"
  repository = "https://fluent.github.io/helm-charts"
  chart      = "fluent-bit"
  namespace  = "logging"

  values = [
    file("../helm-values/fluent-bit-values.yaml")
  ]

  depends_on = [helm_release.elasticsearch]
}