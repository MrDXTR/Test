module "aws_sqs" {
  content_based_deduplication = false

  delay_seconds = 0

  env_name = "testing-us-east-2"

  fifo = false

  layer_name = "testing-us-east-2"

  message_retention_seconds = 345600

  module_name = "AWS SQS"

  receive_wait_time_seconds = 0

  source = "git::https://github.com/thesaas-company/terraform-cloud-cops.git//modules/aws_sqs?ref=main"
}

output "kms_arn" {
  value = module.aws_sqs.kms_arn
}

output "queue_arn" {
  value = module.aws_sqs.queue_arn
}

output "queue_id" {
  value = module.aws_sqs.queue_id
}

output "queue_name" {
  value = module.aws_sqs.queue_name
}