# Overview
Demo with a Git based application in ACM along with an ACS GitHub action on the deployment yaml in the repo. The GH action portion runs a CI check on any PR or commit to the repo to check for security violations against the ACS API.  ACM uses the repo to automatically sync changes to the application and deploy to development clusters. A policy in ACS is then turned on to enforce the “blocking” of privileged containers in the development environment. 

When changing the yaml from privileged:false to true in the git repo, we observe the GH CI check for build warning from ACS, and then watch it be prevented from being pushed into the dev environment automatically through ACM’s application.

[Watch the Demo Video](https://www.youtube.com/watch?v=AwvtabrR0a4&t=3s)

## Prerequsities:
1. Must have ACS deployed and ACM deployed within at least 1 cluster shared between the two. (i.e. secured cluster services running as a managed cluster within ACM).

## Basic Instructions for Demo

1. Clone the repo
2. Inside ACS, generate an API token and save this as a GitHub action secret called ROX_API_TOKEN
3. Create a GitHub action secret for CENTRAL with the value of your Central route's address (no https:// or port)
4. Configure an application tied to priveleged/rsyslog.yaml inside ACM with a placement policy to the shared cluster
5. Enable the ACS Policy "Privliged Container" for 'Inform and Enforce' and click Save. 
6. Update the rsyslog.yaml deployment with privileged: true (from false). 
7. Examine GitHub Action CI Build for Failure 
8. Review ACM Application subscription and search resource to illustrate blocked deployment for the updated yaml 
