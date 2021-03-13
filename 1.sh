#!/bin/bash
gcloud auth revoke --all

while [[ -z "$(gcloud config get-value core/account)" ]]; 
do echo "waiting login" && sleep 2; 
done

while [[ -z "$(gcloud config get-value project)" ]]; 
do echo "waiting project" && sleep 2; 
done

# gsutil -m cp -r "gs://spls/gsp233/*" .
cd tf-gke-k8s-service-lb

terraform init
terraform apply