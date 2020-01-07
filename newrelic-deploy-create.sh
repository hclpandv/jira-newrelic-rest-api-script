#!/usr/bin/env bash

#---Vars
APP_ID="565656565656"
API_KEY="NRRA-67676768678686076860"

#---Main
curl -X POST "https://api.newrelic.com/v2/applications/$APP_ID/deployments.json" \
     -H "X-Api-Key:$API_KEY" \
     -i \
     -H "Content-Type: application/json" \
     -d \
"{
  \"deployment\": {
    \"revision\": \"REVISION\",
    \"changelog\": \"Testing changes in staging, Removed: None\",
    \"description\": \"Added a deployments resource to the v2 API\",
    \"user\": \"bitbucket-pipeline@mycompany.com\"
  }
}" 

