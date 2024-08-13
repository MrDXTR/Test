module "Something" {
  alert_manager_definition = <<EOF
alertmanager_config: |
  route:
    receiver: 'default'
  receivers:
    - name: 'default'
EOF

  create = true

  create_workspace = true

  source = "git::https://github.com/terraform-aws-modules/terraform-aws-managed-service-prometheus.git?ref=main"

  version = "main"
}