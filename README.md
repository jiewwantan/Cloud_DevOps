# Simple Hello World app to demonstrate DevOps for a cloud native application

## CircleCI Status Badges
[![CircleCI](https://circleci.com/gh/jiewwantan/Cloud_DevOps/tree/main.svg?style=svg)](https://circleci.com/gh/jiewwantan/Cloud_DevOps/tree/main)

## Abstract
This is a simple python app to demonstrate DevOps process with the basic feature of a cloud native applicaitons.
CircleCI is used as the continuous integration pipeline tool.

## Linting for Python
Initially, all Python code syntax are checked by pylint.

## Linting for Docker
Following, dockerfil is being checked by hadolint.

## Testing for App
The Flask app is then tested by pytest.

## Testing for security
Potential Python code vulnerabilities are scanned by Bandit.

## Building image
The building of the appp into container and pushing the container to Docker Hub are conducted by CircleCI pipeline.

## Building Infrastructure
The essential cloud service resources are assembled by cloudformation into a stack sitting in the AWS cloud.

## Configuring Infrastructure
The automation of shell commands so that deployment can be replicated with ease is configured using Ansible 
In the configuration minikube and Kubectl are installed and configured for execution of the Hello app in a Kubernetes cluster

## Smoke test
Before the CI pipelines, smoke test is conducted to ensure the container(s) are properly configure and that its service can be accessed by curl.
Should there be any failure, the built environment will be destroyed to avoid unnecessary charges. 

## Cleaning up
Deleting old cloud resources
