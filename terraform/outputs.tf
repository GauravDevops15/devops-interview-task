output "app_service_name" {
  value = kubernetes_service.app_service.metadata[0].name
}

output "grafana_service_name" {
  value = helm_release.grafana.name
}

output "kibana_service_name" {
  value = helm_release.kibana.name
}
