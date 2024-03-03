Challenge #2 We need to write code that will query the meta data of an instance within AWS or Azure or GCP and provide a json formatted output. The choice of language and implementation is up to you. Bonus Points The code allows for a particular data key to be retrieved individually Hints · Aws Documentation (https://docs.aws.amazon.com/) · Azure Documentation (https://docs.microsoft.com/en-us/azure/?product=featured) · Google Documentation (https://cloud.google.com/docs)


Querying the Metadata of an instance will be thorugh this below mentioned script in a windows machine using PowerShell.
We can get the output in the JSON format, but I am not sure about how to fetch a data key individually.

But based on the documentation from MS, I got to know that based on different requirement the endpoint categories differ, whcih we need to modify the URI to get.

Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -NoProxy -Uri "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | ConvertTo-Json -Depth 64
