#!/bin/bash

# Set parameters
  GKE_CLUSTER: mb-cluster
  GKE_SERVICE_ACCOUNT: mb-serviceaccount
  GKE_ZONE: us-central1-c


gcloud config set project $GKE_PROJECT

# Delete the cluster
gcloud container clusters delete $GKE_CLUSTER --region $GKE_ZONE

# Delete service account
gcloud iam service-accounts delete "$GKE_SERVICE_ACCOUNT@$GKE_PROJECT.iam.gserviceaccount.com"

# Delete repository
gcloud artifacts repositories delete $GKE_PROJECT --location $GKE_REGION