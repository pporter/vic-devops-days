rm -rf index.php
mv ~/index.php .
curl -1 -H "Content-Type: application/json" --user skhan:dr4w3r5 -X POST -d '
{
  "properties": {
    "build_number": "52",
    "server": "Dev-Web-002",
    "severity": "High",
    "priority": "Highest",
    "description": "WebServer is Down"
  },
  "recipients": [
    {
      "targetName": "skhan"
    }
  ]
}
' "https://advisors.na5.xmatters.com/reapi/2015-04-01/forms/e87edc8f-a705-491f-b007-65e73ef88c4a/triggers"
