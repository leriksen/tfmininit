#!/usr/bin/env bash

set -euo pipefail

# to authenticate as a service principal, at the init stage, you need
# SA name
# container name
# key (blob) name
# use_azuread_auth == true
# addSpnToEnvironment == true in AzureCLI@2 devops task
# tenant id , obtained from addSpnToEnvironment
# client id , obtained from addSpnToEnvironment
# client key , obtained from addSpnToEnvironment

export ARM_TENANT_ID="${tenantId}"
export ARM_CLIENT_ID="${servicePrincipalId}"
export ARM_CLIENT_SECRET="${servicePrincipalKey}"

echo "terraform init ${*}"

terraform init "${@}"
