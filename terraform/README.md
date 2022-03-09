# Provision a GKE Cluster

This repo is a companion repo to the [Provision a GKE Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-gke-cluster), containing Terraform configuration files to provision an GKE cluster on GCP.

This sample repo also creates a VPC and subnet for the GKE cluster. This is not
required but highly recommended to keep your GKE cluster isolated.


# Install kubectl
If you do not already have the CLI tool kubectl installed, please follow these [instructions](https://kubernetes.io/docs/tasks/tools/) to install.


# Configure kubectl 

```
make config
```

After 2-5 minutes, kubectl get pods | grep airbyte should show Running as the status for all the core Airbyte pods. This may take longer on Kubernetes clusters with slow internet connections.


# Launch Airbyte
Now visit http://localhost:8000 in your browser and start moving some data!
