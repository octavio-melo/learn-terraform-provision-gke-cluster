#!/usr/bin/env bash

ZONE_NAME="europe-west1"
CLUSTER_NAME="trustly-ds-test-1-gke"
PROJECT_NAM="trustly-ds-test-1"

gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE_NAME --project $PROJECT_NAM
GKE_CONTEXT=$(kubectl config get-contexts)
kubectl config use-context gke_trustly-ds-test-1_europe-west1_trustly-ds-test-1-gke
