Class zpButtons.API.REST.spec Extends %REST.Spec [ ProcedureBlock ]
{

XData OpenAPI [ MimeType = application/json ]
{
{
  "info":{
    "title":"SystemPerformance Utility API",
    "description":"An API for interacting with the SystemPerformance Utility",
    "version":"1.0.1",
    "x-ISC_Namespace":"%SYS"
  },
  "basePath":"/pButtons",
  "paths":{
    "/profileMgmt/{name}/{description}/{interval}/{count}":{
      "post":{
        "parameters":[
          {
            "name":"name",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"description",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"interval",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"count",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"payloadBody",
            "in":"body",
            "description":"Request body contents",
            "required":false,
            "schema":{
              "type":"string"
            }
          }
        ],
        "operationId":"CreateProfilePerCount",
        "description":"Create a profile giving an interval and count",
        "x-ISC_ServiceMethod":"CreateProfilePerCount",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "201":{
            "description":"Profile Created"
          }
        }
      },
      "put":{
        "parameters":[
          {
            "name":"name",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"description",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"interval",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"count",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"payloadBody",
            "in":"body",
            "description":"Request body contents",
            "required":false,
            "schema":{
              "type":"string"
            }
          }
        ],
        "operationId":"EditProfile",
        "description":"Edit a profile, providing new interval and count",
        "x-ISC_ServiceMethod":"EditProfile",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "200":{
            "description":"Profile Edited Successfully"
          }
        }
      }
    },
    "/profileMgmt/{duration}/{interval}":{
      "post":{
        "parameters":[
          {
            "name":"duration",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"interval",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"payloadBody",
            "in":"body",
            "description":"Request body contents",
            "required":false,
            "schema":{
              "type":"string"
            }
          }
        ],
        "operationId":"CreateProfilePerDuration",
        "description":"Create a profile giving a duration and interval",
        "x-ISC_ServiceMethod":"CreateProfilePerDuration",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "201":{
            "description":"Profile Created"
          }
        }
      }
    },
    "/profileMgmt/{name}":{
      "delete":{
        "parameters":[
          {
            "name":"name",
            "in":"path",
            "required":true,
            "type":"string"
          }
        ],
        "operationId":"DeleteProfile",
        "x-ISC_ServiceMethod":"DeleteProfile",
        "x-ISC_CORS":true,
        "description":"Delete a profile per name",
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "200":{
            "description":"Profile Deleted Successfully"
          }
        }
      },
      "get":{
        "parameters":[
          {
            "name":"name",
            "in":"path",
            "required":true,
            "type":"string"
          }
        ],
        "operationId":"GetProfile",
        "x-ISC_ServiceMethod":"GetProfile",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "200":{
            "description":"Info about a Profile"
          }
        }
      }
    },
    "/profileMgmt":{
      "get":{
        "operationId":"GetProfiles",
        "x-ISC_ServiceMethod":"GetProfiles",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "200":{
            "description":"(Expected Result)"
          }
        },
        "description":"gets a list of all the currently defined profiles"
      }
    },
    "/profileMgmtCopy/{name}/{newName}":{
      "post":{
        "parameters":[
          {
            "name":"name",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"newName",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"payloadBody",
            "in":"body",
            "description":"Request body contents",
            "required":false,
            "schema":{
              "type":"string"
            }
          }
        ],
        "operationId":"CopyProfile",
        "description":"Copy a Profile giving a new name",
        "x-ISC_ServiceMethod":"CopyProfile",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "201":{
            "description":"New Profile Copy Created"
          }
        }
      }
    },
    "/runMgmt":{
      "get":{
        "operationId":"GetWaitTimeForCurrentRuns",
        "description":"Return the time remaining to wait for current Runs",
        "x-ISC_ServiceMethod":"GetWaitTimeForCurrentRuns",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "200":{
            "description":"Returned OK"
          }
        }
      }
    },
    "/runMgmt/{runId}":{
      "get":{
        "parameters":[
          {
            "name":"runId",
            "in":"path",
            "required":true,
            "type":"string"
          }
        ],
        "operationId":"GetWaitTimeForRunId",
        "description":"Return the time remaining to wait for a given Run ID",
        "x-ISC_ServiceMethod":"GetWaitTimeForRunId",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "200":{
            "description":"Returned OK"
          }
        }
      },
      "put":{
        "parameters":[
          {
            "name":"runId",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"payloadBody",
            "in":"body",
            "description":"Request body contents",
            "required":false,
            "schema":{
              "type":"string"
            }
          }
        ],
        "operationId":"CreatePreviewReport",
        "description":"Creat a Preview Report for a Run",
        "x-ISC_ServiceMethod":"CreatePreviewReport",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "202":{
            "description":"Preview Report Request Accepted"
          }
        }
      }
    },
    "/runMgmt/{runId}/{delete}":{
      "delete":{
        "parameters":[
          {
            "name":"runId",
            "in":"path",
            "required":true,
            "type":"string"
          },
          {
            "name":"delete",
            "in":"path",
            "required":true,
            "type":"string"
          }
        ],
        "operationId":"StopRun",
        "x-ISC_ServiceMethod":"StopRun",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "202":{
            "description":""
          }
        }
      }
    },
    "/runMgmt/{profile}/{liteRun}":{
            "post":{
              "parameters":[
                {
                  "name":"profile",
                  "in":"path",
                  "required":true,
                  "type":"string"
                },
                {
                  "name":"liteRun",
                  "in":"path",
                  "required":true,
                  "type":"string"
                },
                {
                  "name":"payloadBody",
                  "in":"body",
                  "description":"Request body contents",
                  "required":false,
                  "schema":{
                    "type":"string"
                  }
                }
              ],
              "operationId":"RunProfile",
              "x-ISC_ServiceMethod":"RunProfile",
              "x-ISC_CORS":true,
              "responses":{
                "default":{
                  "description":"(Unexpected Error)"
                },
                "202":{
                  "description":"Run Profile Initiated"
                }
              }
            }
          },
    "/runMgmtPrevious":{
      "get":{
        "operationId":"GetPreviousRuns",
        "description":"Return a list of previous runs",
        "x-ISC_ServiceMethod":"GetPreviousRuns",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "200":{
            "description":"Returned OK"
          }
        }
      }
    },
    "/generalMgmt/logFolder":{
      "get":{
        "operationId":"GetLogFolder",
        "x-ISC_ServiceMethod":"GetLogFolder",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "200":{
            "description":"Returned OK"
          }
        },
        "description":"returns the current folder location for the output log files"
      },
      "put":{
        "parameters":[
          {
            "name":"payloadBody",
            "in":"body",
            "description":"Request body contents",
            "required":false,
            "schema":{
              "type":"string"
            }
          }
        ],
        "operationId":"SetLogFolder",
        "x-ISC_ServiceMethod":"SetLogFolder",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "204":{
            "description":"Set Value OK"
          }
        },
        "description":"changes the output log files folder location to a new value"
      },
      "post":{
        "parameters":[
          {
            "name":"payloadBody",
            "in":"body",
            "description":"Request body contents",
            "required":false,
            "schema":{
              "type":"string"
            }
          }
        ],
        "operationId":"ResetLogFolder",
        "x-ISC_ServiceMethod":"ResetLogFolder",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "204":{
            "description":"Reset Value OK"
          }
        },
        "description":"resets the folder location to the default value"
      }
    },
    "/generalMgmt/version":{
      "get":{
        "operationId":"GetVersion",
        "description":"Return version of the Utility",
        "x-ISC_ServiceMethod":"GetVersion",
        "x-ISC_CORS":true,
        "responses":{
          "default":{
            "description":"(Unexpected Error)"
          },
          "200":{
            "description":"Returned OK"
          }
        }
      }
    }
  },
  "swagger":"2.0"
}
}

}
