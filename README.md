
Amazon Managed Grafana Workspace:

## Motivation
In this repository I am adding the artifacts to build an Amazon Managed Grafana workspace and dashboard using Terraform. The process is automated using Azure Pipelines.
<br />Deploying the infrastructure using a CI pipeline involves four level steps: (i) build the workspace using the `aws` provider for Terraform, (ii) generate an API key, (iii) use the API key in the `grafana` provider for Terraform and create dashboard/s, and finally (iv) delete the API key.

