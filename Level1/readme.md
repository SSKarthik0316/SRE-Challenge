
# Azure Infrastructure Automation with Terraform

This Terraform configuration creates an Azure Resource Group, a Storage Account, and a Storage Container. The output includes the Storage Account ID, Primary Access Key, Primary Connection String, and Container ID.

## Prerequisites

- Terraform v1+
- Azure CLI
- An Azure subscription

## Usage

1. **Clone the repository**:
    
    git clone <repository_url>
    cd <repository_directory>
   

2. **Initialize Terraform**:
    
    terraform init
   

3. **Validate the Terraform configuration**:
    
    terraform validate
    

4. **Plan the infrastructure**:
    
    terraform plan -out=tfplan
    terraform show -json plan.tfplan | jq '.' > tfplan.json
  

5. **Review the plan output**:
    The output of the `terraform plan` command will display the changes that will be made by Terraform.

![flow diagram](images/Untitled%20Diagram.png)
## Notes

- The Terraform state is stored locally in `terraform.tfstate`.
- Ensure that the `azurerm` provider version in the `main.tf` file is compatible with your Terraform version.
- This configuration does not apply the changes to the infrastructure. To apply the changes, use `terraform apply` (not required in this task).

## Outputs

- `storage_account_id`: The ID of the created Storage Account.
- `storage_account_primary_access_key`: The primary access key of the Storage Account.
- `storage_account_primary_connection_string`: The primary connection string of the Storage Account.
- `container_id`: The ID of the created Storage Container.

## Clean up

To destroy the created infrastructure, use:
```bash
terraform destroy
