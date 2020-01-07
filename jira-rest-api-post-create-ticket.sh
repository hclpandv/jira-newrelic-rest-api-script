#!/usr/bin/env bash

#---Vars
JIRA_TOKEN="nbnnbbghghnhvhbhbjknnghghghg=="

#---Main

curl -X POST https://jira.mycompany.com/rest/api/2/issue/ \
     -H "Authorization: Basic $JIRA_TOKEN" \
     -H "Content-Type: application/json" \
     -d \
'{
    "fields": {
       "project":
       {
          "id": "14"
       },
       "summary": "Test JIRA ticket via REST api",
       "description": "NO ACTION NEEDED, Creating of an issue for TARGET project using the REST API",
       "issuetype": {
          "name": "Task"
       },
       "priority": {
          "name": "Critical"
       }
   }
}'
