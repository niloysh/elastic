#!/bin/bash
curl -u n6saha:password -k -X GET https://129.97.26.28:31920/logstash-my-topic/_search?pretty=true -H 'Content-Type: application/json' -d '
{   
    "_source": ["slice-session-info.PFCPSession.PDRs.PDRId"],
    "query" : {
        "match" : { 
            "S-NSSAI" : "1@010203" 
        }
    }
}
'
