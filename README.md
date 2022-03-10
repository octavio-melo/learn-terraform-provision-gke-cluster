# Provision a GKE Cluster

This repo is a companion repo to the [Provision a GKE Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-gke-cluster), containing Terraform configuration files to provision an GKE cluster on GCP.

This sample repo also creates a VPC and subnet for the GKE cluster. This is not
required but highly recommended to keep your GKE cluster isolated.


# Install kubectl
If you do not already have the CLI tool kubectl installed, please follow these [instructions](https://kubernetes.io/docs/tasks/tools/) to install.


# Custom Airbyte Manifest

```
$ sh config.sh
$ kubectl kustomize kube/overlays/stable
$ kubectl apply -k kube/overlays/stable
```

# Launch Airbyte Webapp
````
$ gcloud container clusters get-credentials trustly-ds-test-1-airbyte-gke --region europe-west1 --project trustly-ds-test-1 \
 && kubectl port-forward $(kubectl get pod --selector="airbyte=webapp" --output jsonpath='{.items[0].metadata.name}') 8080:80
```
