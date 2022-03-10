#!/usr/bin/env bash

ZONE_NAME="europe-west1"
CLUSTER_NAME="trustly-ds-test-1-airbyte-gke"
PROJECT_NAM="trustly-ds-test-1"

gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE_NAME --project $PROJECT_NAM
GKE_CONTEXT=$(kubectl config get-contexts --output=name | grep "$CLUSTER_NAME")
kubectl config use-context $GKE_CONTEXT

