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

output "dl_readers" {
  value = toset(local.dl_readers[var.environment])
}

output "sa_readers" {
  value = toset(local.sa_readers[var.environment])
}

output "dl_writers" {
  value = toset(local.dl_writers[var.environment])
}

output "sa_writers" {
  value = toset(local.sa_writers[var.environment])
}

output "fa_subscription_key" {
  value = local.fa_subscription_key[var.environment]
}

output "env_sub" {
  value = local.env_sub[var.environment]
}

output "sai_environment" {
  value = local.sai_environment[var.environment]
}

output sai_incident_link {
  value = local.sai_incident_link[var.environment]
}

output "kidsoft_service_key" {
  value = local.kidsoft_service_key[var.environment]
}

output "GetIncidentData" {
  value = local.GetIncidentData[var.environment]
}

output "GetKidsoftClientData" {
  value = local.GetKidsoftClientData[var.environment]
}

output "nfr_to_mail" {
  value = local.nfr_to_mail[var.environment]
}

output "akv_readers" {
  value = local.akv_readers[var.environment]
}

output "akv_writers" {
  value = local.akv_writers[var.environment]
}

output "Test_EmailIds" {
  value = local.Test_EmailIds[var.environment]
}

output "Is_Testing" {
  value = local.Is_Testing[var.environment]
}

output "CNC_Level_Count" {
  value = local.CNC_Level_Count[var.environment]
}

output "Is_Incident_Test" {
  value = local.Is_Incident_Test[var.environment]
}

output "Practice_Excellence_Emails" {
  value = local.Practice_Excellence_Email[var.environment]
}

output "APIM_key" {
  value = local.APIM_key[var.environment]
}

output "apim_named_secrets" {
  value = local.apim_named_secrets[var.environment]
}