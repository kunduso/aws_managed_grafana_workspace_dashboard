
![](https://img.shields.io/badge/Amazon%20Managed%20Grafana%20Workspace-BuildStatus-informational) 
[![Build Status](https://littlecoding.visualstudio.com/Open-Project/_apis/build/status/kunduso.aws_managed_grafana_workspace_dashboard?branchName=main)](https://littlecoding.visualstudio.com/Open-Project/_build/latest?definitionId=33&branchName=main)<br />
<br />![](https://img.shields.io/badge/Amazon%20Managed%20Grafana%20Dashboard-BuildStatus-informational)
[![Build Status](https://littlecoding.visualstudio.com/Open-Project/_apis/build/status/kunduso.aws_managed_grafana_workspace_dashboard.dashboard?branchName=main)](https://littlecoding.visualstudio.com/Open-Project/_build/latest?definitionId=34&branchName=main)
![Imange](https://skdevops.files.wordpress.com/2022/12/68-image-1-1.png)
## Motivation
In this repository I have the source code to build an Amazon Managed Grafana workspace and dashboard using Terraform. The process is automated using Azure Pipelines.

<br />**If you are interested in knowing and understanding more about the code please visit my notes.**
<br />[Create Amazon Managed Grafana Workspace using Terraform](https://skundunotes.com/2022/11/12/create-an-amazon-managed-grafana-workspace-using-terraform/)
<br />[Create Amazon Managed Grafana Dashboard using Terraform](https://skundunotes.com/2022/12/03/create-an-amazon-managed-grafana-dashboard-using-terraform-and-azure-pipelines/)
## Pre-Requisites
* To create an Amazon Managed Grafana workspace enable AWS organizations and AWS Indentity Center in your AWS account.
* Create an AWS IAM user who can manage the resources this Terraform stack provisions.

## Algorithm
Deploying the Amazon Managed Grafana Workspace and Dashboard infrastructure using Terraform in a CI pipeline environment involves four high level steps: 
<br />(i) build the workspace using the [Terraform `aws` provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs), 
<br />(ii) generate an API key, 
<br />(iii) use the API key in the [Terraform `grafana` provider](https://registry.terraform.io/providers/grafana/grafana/latest/docs) and create dashboard/s, and finally 
<br />(iv) delete the API key.

## Folder Structure:
There are two distinct set of projects hosted in this repository with one depending on the other.<br />
<br />The [`amg_workspace`](./amg_workspace) folder hosts the source code to provision an Amazon Managed Grafana workspace using Terraform. The [AWS IAM policy files](./amg_workspace/user-policy-files/) required to provision these resources are also available to adhere to principle of least priviledge. It also contains the [azure pipelines yaml file](./amg_workspace/azure-pipelines-workspace.yml) to automate the process.<br />
<br /> The [`amg_dashboard`](./amg_dashboard/) folder hosts the source code to provision a dashboard in the Amazon Managed Grafana workspace and hence it depends on the workspace being available. Here too, the [azure pipelines yaml file](./amg_dashboard/azure-pipelines-dashboard.yml) is available to automate the process.
## License
This code is released under the Unlincse License. See [LICENSE](LICENSE).