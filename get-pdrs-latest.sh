#!/bin/bash
curl -u n6saha:password -k -X GET 'https://129.97.26.28:31920/logstash-my-topic/_search?pretty=true&filter_path=hits.hits*' -H 'Content-Type: application/json' -d '
{   "size": 1,
    "sort": { "@timestamp": "desc"},
    "_source": false,
   "query" : {
        "match" : { 
            "S-NSSAI" : "1@010203" 
        }
    },
    "fields": [
        "slice-session-info.PFCPSession.PDRs.PDRId"
    ]
}
'
