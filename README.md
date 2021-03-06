## sys-perf-restapi
This is a REST API application for wrapping the SystemPerformance (pka pButtons) utility, built with ObjectScript in InterSystems IRIS.
It also has OPEN API spec, 
can be developed with Docker and VSCode,
can ve deployed as ZPM module.

## Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.

## Installation with ZPM

zpm:USER>install sys-perf-restapi

## Installation for development

Clone/git pull the repo into any local directory.

## How to Work With it

This template creates /pbuttons REST web-application on IRIS which implements api calls to the SystemPerformance (pka pButtons) utility.

A simple partial UI is also provided as a sample of what can be done using the REST API.

You can browse to the UI with the following link:
http://<host>:<port>/pButtonsUI/index.csp

For example:
http://localhost:52773/pButtonsUI/index.csp

# Testing with UnitTest

If using Dockerfile, the container will also be setup with the relevant UnitTest folder and global pointing to it.

```
zn "%sys"
do ##class(zpButtons.Test.BasicAPITest).RunBasicTests()
```

```
do ##class(zpButtons.Test.BasicAPITest).RunRESTTests()
```

[Note running the "Basic" Tests will require user intervention (approving changing a folder location)]

## How to start coding
This repository is ready to code,  change and expand in VSCode with ObjectScript plugin.
Install [VSCode](https://code.visualstudio.com/) and [ObjectScript](https://marketplace.visualstudio.com/items?itemName=daimor.vscode-objectscript) plugin and open the folder in VSCode.

The script in Installer.cls will import everything you place under /src/cls into IRIS.

## A Post on the Developer Community
See this [post](https://community.intersystems.com/post/systemperformance-utility-pka-pbuttons-api-and-rest-api-and-sample-ui) for more info (screenshots) and discussion.

## What's inside the repo

# Dockerfile

The simplest dockerfile to start IRIS and load ObjectScript from /src/cls folder
Use the related docker-compose.yml to easily setup additional parametes like port number and where you map keys and host folders.

# Dockerfile-zpm

Dockerfile-zpm builds for you a container which contains ZPM package manager client so you are able to install packages from ZPM in this container

# .vscode/settings.json

Settings file to let you immedietly code in VSCode with [VSCode ObjectScript plugin](https://marketplace.visualstudio.com/items?itemName=daimor.vscode-objectscript))

# .vscode/launch.json
Config file if you want to debug with VSCode ObjectScript

# src/ code files
##### /cls/zpButtons/Basic/api.cls
    The basic API wrapping the ^SystemPerformance routine
##### /cls/zpButtons/REST/spec.cls
    A json Swagger spec of the REST API
##### /cls/zpButtons/REST/impl.cls
    The implementation calling into the Basic.api methods
##### /cls/zpButtons/Test
    BasicAPITest and RestAPITest - UnitTest classes for testing various scenarios (creating profiles, running, etc.)
##### /inc/zpButtonsInc.inc 
    An include macro definition to support differences between CACHE/Ensemble and InterSystems IRIS.
##### /swagger
    The swagger json file (for editing with relevant plug-in, found easier than the spec class directly)
##### /pButtonsAppCSP
    A folder with the web app related code.
