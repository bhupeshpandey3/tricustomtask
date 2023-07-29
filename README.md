# tricustomtask
GCP infra with Terraform

// Project Overview
This documentation provides an overview and step-by-step guide for deploying the infrastructure for the project using Terraform. The infrastructure is designed to support the project's requirements and consists of four modules: gke, vpc, sqldatabase, and vm. These modules work together to set up a Google Kubernetes Engine (GKE) cluster, Virtual Private Cloud (VPC), SQL database, and virtual machine (VM) instances.
Prerequisites
Before proceeding with the infrastructure deployment, ensure you have the following prerequisites:
1.	Google Cloud Platform (GCP) Account: You should have access to a GCP account with appropriate permissions to create resources such as GKE clusters, VM instances, VPC networks, and SQL databases.
2.	Terraform Installed: Make sure you have Terraform installed on your local machine or the environment where you intend to run the deployment.
3.	Authentication: Configure GCP authentication by setting up a service account and exporting the credentials as an environment variable (GOOGLE_APPLICATION_CREDENTIALS).
Module Descriptions
1. GKE Module (gke)
The GKE module is responsible for creating the Kubernetes cluster to host the project's applications. It provisions the necessary resources, such as node pools, cluster autoscaler, and firewall rules, to ensure a scalable and secure Kubernetes environment.
2. VPC Module (vpc)
The VPC module sets up the Virtual Private Cloud network for the project. It creates a custom network and subnetworks, as well as firewall rules to control inbound and outbound traffic.
3. SQL Database Module (sqldatabase)
The SQL database module is used to create a managed SQL database service. It provisions a Google Cloud SQL instance with the specified configuration, including database type, version, and storage capacity.
4. VM Module (vm)
The VM module creates virtual machine instances required for the project. It provisions compute instances with customizable specifications, including machine type, disk size, and boot image.
Deployment Steps
To deploy the infrastructure for the project, follow these steps:
Step 1: Clone the Repository
Clone the repository containing the Terraform code for the infrastructure modules:
bashCopy code
git clone https://github.com/your-repo/terraform-infrastructure.git cd terraform-infrastructure 
Step 2: Configure Variables
Inside each module, there is a variables.tf file containing variables that can be customized based on your project requirements. Review and modify these variables as needed before proceeding with the deployment.
Step 3: Initialize Terraform
Initialize Terraform in the root directory of the repository to download the required providers and modules:
bashCopy code
terraform init 
Step 4: Plan the Deployment
Generate a Terraform execution plan to preview the changes that will be applied to your infrastructure:
bashCopy code
terraform plan 
Review the plan output to ensure it aligns with your expectations and verifies that all resources will be created correctly.
Step 5: Deploy the Infrastructure
Execute the Terraform deployment to create the infrastructure:
bashCopy code
terraform apply 
You will be prompted to confirm the execution of the deployment plan. Type yes and press Enter to proceed.
Step 6: Verify the Deployment
After the deployment is complete, Terraform will display the resources created. Take note of any relevant information, such as IP addresses, cluster details, and database connection strings.
Step 7: Teardown (Optional)
If you need to tear down the infrastructure, you can use the following command:
bashCopy code
terraform destroy 
This will remove all resources created by Terraform, so use it with caution.
Conclusion
Congratulations! You have successfully deployed the infrastructure for the project using Terraform's modular approach. You now have a scalable and flexible environment to host your applications on GKE, manage your SQL database, and create VM instances.
Remember to follow best practices and review the Terraform code regularly to keep your infrastructure secure and up-to-date with the project's changing needs.
If you encounter any issues or have further questions, feel free to reach out to the infrastructure team for assistance.
Happy deploying!

