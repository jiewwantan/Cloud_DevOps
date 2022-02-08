## CircleCI
[![CircleCI](https://circleci.com/gh/jiewwantan/Cloud_DevOps/tree/main.svg?style=svg)](https://circleci.com/gh/jiewwantan/Cloud_DevOps/tree/main)

## Abstract
This simple python code is used to illustrate the main ideas for DevOps and cloud native applicaitons.
I used CircleCI for my pipeline which follow the below steps (all screenshots could be found in Udacity-DevOps-Engineer-Capstone SC.pdf)
the project has 2 braches 
dev
where all teh changes related to teh code and scanning are initiatted
main
for the delpoyment

## Lint code
the first step of the pipeline is to check the code syntax which is done by pylint

## Lint Docker
Then check the docker file for any typos by hadolint

## Test App
The i used pytest to test the flask app I am running

## Security test
Used bandit to scan my python code for vulnerabilities

## Build image
After all the tests are complete I used CircleCI to build my container image and publish it to docker hub with the latest tag

## Build Infra
Using the cloudformation power I created the required server to run my application in prod

## Configure Infra
Using Ansible i confiured minikube and Kubectl to run my application inside a Kubernetes cluster

## Smoke test
Finalling using curl to the new server services. 
I created an testing scenario to make sure the new infra is working fine or delete it using the destroy-environment command from before deleting the old one.
In case it fails it will delete the new infrastructure to save cost

## Clean up
Automatically deleting the old infra to save cost
