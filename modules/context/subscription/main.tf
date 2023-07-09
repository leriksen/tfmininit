module "globals" {
  source = "../globals"
}

locals {
  as_string = {
    NP = "Non-Production"
    P  = "Production"
  }

  purpose = {
    NP = "non-prd"
    P  = "prd"
  }

  sai_env = {
    NP = "nonprod"
    P  = "prod"
  }


  aad_env = {
    NP = "non-prod"
    P  = "prod"
  }

  webcontent_auth_parameters = {
    NP = {
      name         = "DG-UNITING-INT-NONPROD-01-AZ02"
      rg           = "RG-UNITING-INT-AE-UAT-COMMON"
      subscription = "e47f88bd-ec0c-45e3-8d75-9bd0b2d55047"
    }
    P = {
      name         = "DG-UNITING-INT-PROD-AZ"
      rg           = "RG-UNITING-INT-AE-PRD-COMMON"
      subscription = "8c86a6db-539b-4d10-9475-dab47e296878"
    }
  }

  webcontents_base_urls = {
    NP = {
      wc-cyf-auth = "https://picla02.unitingcare.local:44366"
      wc-cyf      = "https://picla02.unitingcare.local:44371"
      wc-act-auth = "https://picla03.unitingcare.local:44366"
      wc-act      = "https://picla03.unitingcare.local:44369"
    }
    P = {
      wc-cyf-auth = "https://PPCLW02.unitingcare.local:44333"
      wc-cyf      = "https://PPCLW02.unitingcare.local:44355"
      wc-act-auth = "https://PPCLW03.unitingcare.local:44366"
      wc-act      = "https://PPCLW03.unitingcare.local:44371"
    }
  }

  Alayacare_servicebus_connectionstring = {
    NP = "Endpoint=sb://sbn-common-int-ae-sit-hacc.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=wqoIFovl4MoHvWBzxGg+1xxDdHnTRW1SP1+NzpxgWEg="
    P  = "Endpoint=sb://sbn-common-int-ae-prd-hacc.servicebus.windows.net/;SharedAccessKeyName=RootManageSharedAccessKey;SharedAccessKey=xge00iQV8ZXSp3YOoaqe09pGsS/MzZs+5DnjHT/Vje8="
  }

  carelink_act_structure_url = {
    NP = "http://carelinkplus.igstc.com/ConnectOnFhir/StructureDefinition"
    P  = "http://carelinkplus.igstc.com/ConnectOnFhir/StructureDefinition"
  }

  carelink_cyf_structure_url = {
    NP = "http://carelinkplus.igstc.com/ConnectOnFhir/StructureDefinition"
    P  = "https://www.iconglobal.com.au/fhir/StructureDefinition"
  }
}