# AWS Infrastructure Setup with Terraform

This project demonstrates how to automate the deployment of an AWS infrastructure using Terraform, including a VPC, subnet, security group, EC2 instance, and a load balancer.

## Architecture

This setup includes:
- A VPC (Virtual Private Cloud) for isolated cloud networking.
- A subnet within the VPC.
- An internet-facing Elastic Load Balancer (ELB) distributing incoming traffic.
- An EC2 instance serving as a web server.
- A security group that allows HTTP traffic on port 80.

## Prerequisites

- AWS Account
- Terraform installed on your local machine
- SSH key pair for EC2 instance access

## Usage

### Setup Cloud Connection
 - use AWS CLI or GCP CLI to connect your local machine to the cloud provider.
 - setup IAM access tokens, users to use.
 - `Terraform init` will automatically install required packages for that cloud provider. 

### Initialize Terraform

Run the following command to initialize the Terraform environment:

    terraform init

### Plan the Deployment

Review the actions Terraform will execute:

    terraform plan

### Apply the Configuration

Deploy your infrastructure:

    terraform apply

### Accessing the Web Instance

Once the deployment is complete, access the EC2 instance via its public IP in a browser to view the Apache welcome page.

### Clean up Resources

To avoid incurring unnecessary charges, remove the resources:

    terraform destroy

## Customization

You can modify the configuration files to adjust the resources as needed, e.g., changing the instance type or the region.

## Contributing

Feel free to fork this repository and contribute by submitting pull requests to enhance the functionalities.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
