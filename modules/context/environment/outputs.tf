output "tags" {
  value = merge(
    module.subscription.tags,
    {
      environment = var.environment
    }
  )
}

output "law_retention" {
  value = local.law_retention[var.environment]
}

output "law_quota" {
  value = local.law_quota[var.environment]
}
output "env_sub" {
  value = local.env_sub[var.environment]
}
