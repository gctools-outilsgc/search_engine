#!/bin/bash

echo "Creating Profile index and mapping"

curl -XPUT -H "Content-type: application/json" -d '{
  "mappings": {
    "properties": {
      "email": {
        "type": "text"
      },
      "gcID": {
        "type": "keyword"
      },
      "mobilePhone": {
        "type": "text"
      },
      "suggest":{
        "type":"completion"
      },
      "name": {
        "type": "text",
        "fields":{
          "keyword":{
            "type":"keyword"
          }
        }
      },
      "avatar":{
        "type":"text"
      }
      "officePhone": {
        "type": "text"
      },
      "team": {
        "properties": {
          "nameEn": {
            "type": "text",
            "fields": {
              "keyword": {
                "type": "keyword",
                "ignore_above": 256
              }
            }
          },
          "nameFr": {
            "type": "text",
            "fields": {
              "keyword": {
                "type": "keyword",
                "ignore_above": 256
              }
            }
          },
          "organization": {
            "properties": {
              "acronymEn": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "acronymFr": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "nameEn": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "nameFr": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              }
            }
          }
        }
      },
      "titleEn": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      },
      "titleFr": {
        "type": "text",
        "fields": {
          "keyword": {
            "type": "keyword",
            "ignore_above": 256
          }
        }
      }
    }
  }
}' 'http://gcservices.canadaeast.cloudapp.azure.com:9200/profiles'