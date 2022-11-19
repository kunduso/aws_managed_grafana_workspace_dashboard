
Amazon Managed Grafana Workspace:
[![Build Status](https://littlecoding.visualstudio.com/Open-Project/_apis/build/status/kunduso.aws_managed_grafana_workspace_dashboard?branchName=main)](https://littlecoding.visualstudio.com/Open-Project/_build/latest?definitionId=33&branchName=main)
Amazon Managed Grafana Workspace, dashboard:
[![Build Status](https://littlecoding.visualstudio.com/Open-Project/_apis/build/status/kunduso.aws_managed_grafana_workspace_dashboard.dashboard?branchName=main)](https://littlecoding.visualstudio.com/Open-Project/_build/latest?definitionId=34&branchName=main)
## Motivation
In this repository I am adding the artifacts to build an Amazon Managed Grafana workspace and dashboard using Terraform. The process is automated using Azure Pipelines.
<br />Deploying the infrastructure using a CI pipeline involves four level steps: (i) build the workspace using the `aws` provider for Terraform, (ii) generate an API key, (iii) use the API key in the `grafana` provider for Terraform and create dashboard/s, and finally (iv) delete the API key.

