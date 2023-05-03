%dw 2.0
output application/xml
---
//from soap messages there have list of fields then we use * to calling all fields and use the function filter to pick the selected fields. and we can calling the name fields by using '@' and here i had use 'contains' if it there the value will be prints as output. 

{
    Field_Value: (payload.Document.*Field filter ($.@name contains  "xFndVirusScanDate" ))
}