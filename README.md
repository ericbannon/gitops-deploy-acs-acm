# Overview
Demo with a Git based application in ACM along with an ACS GitHub action on the deployment yaml in the repo. The GH action portion runs a CI check on any PR or commit to the repo to check for security violations against the ACS API.  ACM uses the repo to automatically sync changes to the application and deploy to designated clusters. A policy in ACS is then turned on to enforce the “blocking” of deployment using different types of policies (Privleged Containers, Log4Shell, and Spring4Shell). Contributions are welcome. 

Goal is to observe the GH CI check for build warning from ACS, and then watch it be prevented from being pushed into the dev environment automatically through ACM’s application.

[Watch the Demo Video](https://www.youtube.com/watch?v=AwvtabrR0a4&t=3s)

## Prerequsities:
1. Must have ACS deployed and ACM deployed within at least 1 cluster shared between the two. (i.e. secured cluster services running as a managed cluster within ACM).
