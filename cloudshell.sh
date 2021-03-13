#!/bin/bash

# gsutil -m cp -r gs://spls/gsp233/* .
cd tf-gke-k8s-service-lb

terraform init
terraform apply