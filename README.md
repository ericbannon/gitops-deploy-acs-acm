# Overview
Demo with a Git based application in ACM along with an ACS GitHub action on the deployment yaml in the repo. The GH action portion runs a CI check on any PR or commit to the repo to check for security violations against the ACS API.  ACM uses the repo to automatically sync changes to the application and deploy to development clusters. A policy in ACS is then turned on to enforce the “blocking” of privileged containers in the development environment. 

When changing the yaml from privileged:false to true in the git repo, we observe the GH CI check for build warning from ACS, and then watch it be prevented from being pushed into the dev environment automatically through ACM’s application.
