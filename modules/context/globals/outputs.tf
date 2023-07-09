output "tags" {
  value = {
    project      = "IQSR"
    project_code = "PCG120"
    costcentre   = "936921"
  }
}

output "sb_topics" {
  value = toset([
    "client-topic",
    "incident-topic"
  ])
}

output "sb_topic_subscriptions" {
  value = {
    "client-topic" = {
      "icare-subscription" = {
        "filter" = null
      }
    }
    "incident-topic" = {
      "icare-subscription" = {
        "filter" = {
          "name"              = "icareFilter"
          "kind"              = "CorrelationFilter"
          "correlation_label" = "ic"
        }
      }
      "kidSoft-subscription" = {
        "filter" = {
          "name"              = "kidSoftFilter"
          "kind"              = "CorrelationFilter"
          "correlation_label" = "ks"
        }
      }
      "alayacare-subscription" = {
        "filter" = {
          "name"              = "alayacareFilter"
          "kind"              = "CorrelationFilter"
          "correlation_label" = "ac"
        }
      }
      "careLink-subscription" = {
        "filter" = {
          "name"              = "careLinkFilter"
          "kind"              = "CorrelationFilter"
          "correlation_label" = "cl"
        }
      }
    }
  }
}

output "akv_dev_ids" {
  value = toset([
    "3a657f36-4c72-464d-a5f3-050f94c5e97c", # basilin
    "6bf36edd-c576-4975-af83-7745dec14419", # jamshid
    "c38eddd1-b8fb-4c1f-a595-8af014ef8498"  # arun
  ])
}

output "akv_admin_ids" {
  value = toset([
    "93a6fe97-ea9f-4d4f-b315-584e2039b281", # leif
  ])
}

output "functionkey_functions" {
  value = toset(
    [
      "GetCRMClientData",
      "GetIncidentData",
      "GetKidsoftClientData",
      "GetiCareNdisData",
      "InboundUserTransform",
      "GetStaffDataPressureInjury",
    ]
  )
}

output "fa_crm_service_type" {
  value = "317000024,317000010,317000011,317000012"
}

output "apim_sub_key" {
    value = "f8fc582e51214dc98eb783f2d8f5eb0e"
  }

output "icare_authenticationKeys" {
  value = [
    "cchne",
    "northcoast",
    "south",
    "sydneycentral",
    "sydneynorth",
    "west",
  ]
}

# the non-prod service principals object ids for assigning reader role on APIM
output "service_principals" {
  value = [
    "afa23203-97ee-4f3f-bf1c-049bc111d2ce", # dev
    "6830a57c-ec87-45fd-be57-3b25ac92d831", # sit
    "6830a57c-ec87-45fd-be57-3b25ac92d831", # uat
  ]
}

output adf_link_shir_name {
  value = "SH-integrationRuntime1"
}

output logicapp_workflows {
  value = toset(
    [
      "client-data-bulk-api",
      "client-data-icare-notification",
      "cost-centre",
      "staff-data-profile",
      "staff-data-user",
      "incident-data-notification",
    ]
  )
}

output logicapp_workflows_triggers {
  value = {
    client-data-bulk-api           = "manual"
    client-data-icare-notification = "When_a_HTTP_request_is_received"
    cost-centre                    = "When_a_HTTP_request_is_received"
    staff-data-profile             = "When_a_HTTP_request_is_received"
    staff-data-user                = "When_a_HTTP_request_is_received"
    incident-data-notification     = "manual"
  }
}
