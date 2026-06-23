\# Infrastructure as Code on Azure | Terraform



\## Project Overview

This project demonstrates deploying a multi-resource Azure environment using Terraform. The infrastructure includes a Resource Group, Virtual Network, Subnet, Network Interface, and a Linux Virtual Machine — with Terraform state managed remotely via Azure Blob Storage.



\---



\## Architecture

The following resources are deployed:



| Resource | Name |

|---|---|

| Resource Group | my-terraform-rg |

| Virtual Network | my-vnet |

| Subnet | my-subnet |

| Network Interface | my-nic |

| Virtual Machine | my-ubuntu-vm (Ubuntu 18.04) |

| State Storage | Azure Blob Storage |



\---



\## Prerequisites

Before running this project, make sure you have:

\- \[Terraform](https://developer.hashicorp.com/terraform/install) installed

\- \[Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) installed

\- An active Azure subscription

\- An SSH key pair generated on your machine



\---



\## Project Structure

azure-terraform-project/



├── main.tf          # Core infrastructure resources



├── variables.tf     # Input variables and default values



├── backend.tf       # Remote state configuration (Azure Blob Storage)



├── outputs.tf       # Output values after deployment



└── README.md        # Project documentation



\---



\## Setup \& Deployment



\### Step 1 — Login to Azure

```bash

az login

```



\### Step 2 — Create Storage Account for Terraform State

```bash

az group create --name terraform-state-rg --location eastus

az storage account create --name tfstatestorage123 --resource-group terraform-state-rg --location eastus --sku Standard\_LRS

az storage container create --name tfstate --account-name tfstatestorage123

```



\### Step 3 — Initialize Terraform

```bash

terraform init

```



\### Step 4 — Preview the Changes

```bash

terraform plan

```



\### Step 5 — Deploy the Infrastructure

```bash

terraform apply

```

Type `yes` when prompted.



\### Step 6 — Destroy the Infrastructure (when done)

```bash

terraform destroy

```



\---



\## Output Example

After successful deployment, Terraform will display:

resource\_group\_name  = "my-terraform-rg"



virtual\_network\_name = "my-vnet"



subnet\_name          = "my-subnet"



vm\_name              = "my-ubuntu-vm"



vm\_private\_ip        = "10.0.1.4"

\---



\## Technologies Used

\- \*\*Terraform\*\* — Infrastructure as Code tool

\- \*\*Microsoft Azure\*\* — Cloud provider

\- \*\*Azure CLI\*\* — Command line tool for Azure

\- \*\*HCL\*\* — HashiCorp Configuration Language

