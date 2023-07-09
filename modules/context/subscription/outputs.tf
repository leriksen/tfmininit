output "tags" {
  value = merge(
    module.globals.tags,
    {
      context = local.as_string[var.subscription]
    }
  )
}

output "purpose" {
  value = local.purpose[var.subscription]
}

output "sai_env" {
  value = local.sai_env[var.subscription]
}

output "aad_env" {
  value = local.aad_env[var.subscription]
}

output "webcontent_auth_parameters" {
  value = local.webcontent_auth_parameters[var.subscription]
}

output "webcontents_base_urls" {
  value = local.webcontents_base_urls[var.subscription]
}

output "Alayacare_servicebus_connectionstring" {
  value = local.Alayacare_servicebus_connectionstring[var.subscription]
}

output "carelink_act_structure_url" {
  value = local.carelink_act_structure_url[var.subscription]
}


output "carelink_cyf_structure_url" {
  value = local.carelink_cyf_structure_url[var.subscription]
}
