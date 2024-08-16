module "sns" {
  # Set to true to enable FIFO (First-In-First-Out) functionality.
  fifo = true

  # Enables content-based deduplication for the SNS topic.
  content_based_deduplication = false

  # List of SQS subscribers to the SNS topic.
  sqs_subscribers = ["asd", "dfv"]

  # Source of the module, usually a Git repository URL.
  source = "git::https://your-repository-url.git?ref=your-branch-or-tag"

  # Name of the environment.
  env_name = "vbn-ap-south-1"

  # Name of the layer.
  layer_name = "vbn-ap-south-1"

  # Name of the module.
  module_name = "sns"
}