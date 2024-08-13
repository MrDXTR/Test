module "helmchart" {
  # The name by which the release is known in Helm
  release_name = "Helm Chart"

  # The URL of the Helm chart repository
  repository = "asd"

  # The namespace to install the release into
  namespace = ""

  # Create the namespace if it does not exist
  create_namespace = true

  # If set, the installation process purges the chart on fail
  atomic = true

  # Allow deletion of new resources created in this upgrade when upgrade fails
  cleanup_on_fail = true

  # The version of the chart to install
  chart_version = ""

  # List of values files to use for overriding values in the chart
  values_files = []
  
  # Map of values to use for customizing the chart
  values = {}

  # Time in seconds to wait for any individual Kubernetes operation
  timeout = 23

  # Run helm dependency update before installing the chart
  dependency_update = false

  # Wait until all Pods, PVCs, Services, and minimum number of Pods of a Deployment are in a ready state before marking the release as successful
  wait = true

  # Wait for Jobs to complete before marking the release as successful
  wait_for_jobs = true

  # The maximum number of releases kept in history
  max_history = 16

  # Source of the Helm chart module
  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/helm_chart?ref=main"

  # Environment name where the Helm chart is being deployed
  env_name = "vbn-ap-south-1"

  # Layer name for the deployment
  layer_name = "vbn-ap-south-1"

  # Name of the module
  module_name = "helmchart"
}