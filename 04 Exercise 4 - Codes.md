# Code 1.
```json
{
 "name": "AzureMLLinkedService",
 "properties":
 {
  "type": "AzureML",
  "description": "",
  "typeProperties":
  {
   "mlEndpoint": "<Specify the batch scoring URL>",
   "apiKey": "<Specify the published workspace model's API key>"
  }
 }
}
```
----
# Code 2.
```json
{
"name": "AzureBlobDataInPut",
"properties": {
"type": "AzureBlob",
"external": true,
"linkedServiceName": "OutputLinkedService-AzureBlobStorage",
"typeProperties": {
"fileName": "FlightsAndWeather.csv",
"folderPath": "sparkcontainer/flights",
"format": {
"type": "TextFormat"}},
"availability": {
"frequency": "Minute",
"interval": 60}}}
```
----


