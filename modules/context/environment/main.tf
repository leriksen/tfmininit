module "globals" {
  source = "../globals"
}

locals {
  env_sub = {
    dev = "NP"
    sit = "NP"
    uat = "NP"
    prd = "P"
  }

  law_retention = {
    dev = 30 # for perGB2018, 30 is the minimum
    sit = 30
    uat = 90
    prd = 90
  }

  law_quota = {
    dev = 1
    sit = 1
    uat = 1
    prd = -1 # unlimited
  }

  dl_readers = {
    dev = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498"  # Arun Geetha
    ]

    sit = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498"  # Arun Geetha
    ]

    uat = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498"  # Arun Geetha
    ]

    prd = []
  }

  sa_readers = {
    dev = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "da696cc8-f1e8-4f75-8ea9-b90314f84838", # Rajesh Radhakrishnan
      "37c796c9-9926-4ffc-bb8e-88c26d0299db", # Jibitha Krishnan
    ]

    sit = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "da696cc8-f1e8-4f75-8ea9-b90314f84838", # Rajesh Radhakrishnan
      "37c796c9-9926-4ffc-bb8e-88c26d0299db", # Jibitha Krishnan
    ]

    uat = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "da696cc8-f1e8-4f75-8ea9-b90314f84838", # Rajesh Radhakrishnan
    ]

    prd = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "087e5e75-9b3b-49f9-9ab7-9d908da39c2b", # ADM_AZE_RGA_bjoe@uniting.onmicrosoft.com
      "54d8af66-c2f2-449c-9f76-fbd7b1d4e726", # ext_jp@uniting.org
      "93a6fe97-ea9f-4d4f-b315-584e2039b281", # Leif
      ]
  }

  dl_writers = {
    dev = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
    ]

    sit = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498"  # Arun Geetha
    ]

    uat = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498"  # Arun Geetha
    ]

    prd = []
  }

  sa_writers = {
    dev = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "37c796c9-9926-4ffc-bb8e-88c26d0299db", # Jibitha Krishnan
    ]

    sit = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "37c796c9-9926-4ffc-bb8e-88c26d0299db", # Jibitha Krishnan
    ]

    uat = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "37c796c9-9926-4ffc-bb8e-88c26d0299db", # Jibitha Krishnan
    ]

    prd = []
  }

  akv_readers = {
    dev = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "37c796c9-9926-4ffc-bb8e-88c26d0299db", # Jibitha Krishnan
    ]

    sit = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "37c796c9-9926-4ffc-bb8e-88c26d0299db", # Jibitha Krishnan
    ]

    uat = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "37c796c9-9926-4ffc-bb8e-88c26d0299db", # Jibitha Krishnan
    ]

    prd = []
  }

  akv_writers = {
    dev = [
      "3a657f36-4c72-464d-a5f3-050f94c5e97c", # Basilin Joe
      "6bf36edd-c576-4975-af83-7745dec14419", # Jamshid P
      "c38eddd1-b8fb-4c1f-a595-8af014ef8498", # Arun Geetha
      "37c796c9-9926-4ffc-bb8e-88c26d0299db", # Jibitha Krishnan
    ]

    sit = []

    uat = []

    prd = []
  }

  fa_subscription_key = {
    dev = "cd99ca38a83d47178db8f3af61e09d99"
    sit = "f8fc582e51214dc98eb783f2d8f5eb0e"
    uat = "f8fc582e51214dc98eb783f2d8f5eb0e"
    prd = "153b66cba993461f88340a3a7e7e44a6"
  }

  kidsoft_service_key = {
    dev = "191587dd-2aa3-40df-b92d-39f5779a2d2d"
    sit = "1c0f9b16-2428-4937-ab6b-31e1c6fca2df"
    uat = "1c0f9b16-2428-4937-ab6b-31e1c6fca2df"
    prd = "cb1879f9-31f0-4cfc-942a-80363a80beb3"
  }

  GetIncidentData = {
    dev = "ZxAbyjBRh30fSGbbDe3IyfeJMSlub92fo1gGBnCI1ffRAzFuGR5yKQ=="
    sit = "rxiEwD5cxjpND7HaobmB118wIbm9yV1CYlk3uMJTVB1DAzFu2cTGYQ=="
    uat = ""
    prd = ""

  }

  GetKidsoftClientData = {
    dev = "G7M-No3y-G8EVXYk5JVSMnznkG5kzjqL5zv1epmGE3kJAzFumtLCyA=="
    sit = "sZJ6TJHQYbS67-C3hC70uATLlWZ-B4owjM3WrrJ114A_AzFurZ62xw=="
    uat = ""
    prd = ""
  }

  nfr_to_mail = {
    dev = "yragupathy@uniting.org;pgan@uniting.org;vrani@uniting.org;kramaiahsrinivasapur@uniting.org;bjoe@uniting.org"
    sit = "yragupathy@uniting.org;pgan@uniting.org;vrani@uniting.org;kramaiahsrinivasapur@uniting.org"
    uat = "IQSR_Support_NonProd@uniting.onmicrosoft.com"
    prd = "jp@uniting.org;bjoe@uniting.org"
  }

  Test_EmailIds = {
    dev = "jkrishnan@uniting.org;jp@uniting.org"
    sit = "tsweet@uniting.org;jkrishnan@uniting.org;jp@uniting.org;yammuna.ragupathy@testpoint.com.au;paul.gan@testpoint.com.au"
    uat = "tsweet@uniting.org;jkrishnan@uniting.org;jp@uniting.org;yammuna.ragupathy@testpoint.com.au;paul.gan@testpoint.com.au"
    prd = "jkrishnan@uniting.org;jp@uniting.org"
  }

  Is_Testing = {
    dev = true
    sit = true
    uat = true
    prd = true
  }

  Is_Incident_Test = {
    dev = false
    sit = false
    uat = false
    prd = true
  }

  CNC_Level_Count = {
    dev = "4"
    sit = "4"
    uat = "4"
    prd = "4"
  }
  
  Practice_Excellence_Email = {
    dev = " "
    sit = " "
    uat = " "
    prd = " "
  }

  sai_environment = {
    dev = "QUASAR"
    sit = "QUASAR"
    uat = "uniting-train"
    prd = "QUASAR"
  }

  sai_incident_link = {
    dev = "https://quasar${ lower(local.sai_names[var.environment]) }.uniting.org/"
    sit = "https://quasar${ lower(local.sai_names[var.environment]) }.uniting.org/"
    uat = "https://apac.${ lower(local.sai_names[var.environment]) }-ehssrisk.sai360.net/"
    prd = "https://quasarcloud.uniting.org/"
  }

  # do not export, local calculations only
  sai_names = {
    dev = "dev"
    sit = "uat"
    uat = "nonprod"
    prd = "prd"
  }

    # do not export, local calculations only
  APIM_key = {
    dev = "f8fc582e51214dc98eb783f2d8f5eb0e"
    sit = "f8fc582e51214dc98eb783f2d8f5eb0e"
    uat = "f8fc582e51214dc98eb783f2d8f5eb0e"
    prd = "cdfb9f400e8d413690fe7d8f6e275d54"
  }

  apim_named_secrets = {
    dev = {}
    sit = {}
    uat = {}
    prd = {
       client-data-bulk-api-key           = "client-data-bulk-api-prd-query"
       crm-authenticationKey              = "client-data-crm-prd-authenticationKey"
       crm-clientId-Key                   = "client-data-crm-prd-clientId"
       client-data-icare-notification-key = "client-data-icare-notification-prd-query"
       kidsoft-authenticationKey          = "client-data-kidsoft-prd-authenticationKey"
       cost-centre-key                    = "cost-centre-prd-query"
       staff-data-profile-key             = "staff-data-profile-prd-query"
       staff-data-user-key                = "staff-data-user-prd-query"
       sai360-authenticationKey           = "common-sai360-prd-authenticationKey"
       incident-data-notification-key     = "incident-notification-prd-query"
    }
  }
}

module "subscription" {
  source = "../subscription"
  subscription = local.env_sub[var.environment]
}



