 
$JiraToken = "geneRateusingAboveCommand=="
Invoke-WebRequest -Uri https://jira.mycompany.com/rest/api/2/issue -Method POST `
  -Headers @{ Authorization = "Basic $JiraToken" }`
  -ContentType 'application/json' `
  -Body `
  '{
    "fields": {
       "project":
       {
          "id": "111111"
       },
       "summary": "Test JIRA ticket via REST api",
       "description": "NO ACTION NEEDED, Creating an issue for Target project using the REST API",
       "issuetype": {
          "name": "Task"
       },
       "priority": {
          "name": "Critical"
       }
   }
}'
