# CloudFormation to Terraform Migration

This repository contains examples and documentation for migrating from AWS CloudFormation to HashiCorp Terraform. The goal is to demonstrate how to convert existing CloudFormation templates to Terraform configurations, and provide a guide for executing CloudFormation templates using Terraform.

## Directory Structure
```
/
├── README.md
├── cf-examples/
│   ├── example-ec2-instance.yaml
│   ├── example-vpc.yaml
|   ├── example-dynamo-db.yaml
│   └── example-iam-role.yaml
└── tf-examples/
    ├── example-ec2-instance.tf
    ├── example-vpc.tf
    ├── example-dynamo-db.tf
    └── example-iam-role.tf
```
## Getting Started

To get started with the migration from CloudFormation to Terraform, follow the examples provided in this repository. Each directory contains example configurations in CloudFormation and their corresponding Terraform configurations.

### Prerequisites

* Install Terraform
* Install AWS CLI
* Set up your AWS credentials

### Additional Resources

* [AWS Cloudformation Documentation](https://docs.aws.amazon.com/cloudformation/)
* [Terraformer on GitHub](https://github.com/GoogleCloudPlatform/terraformer)
* [cf-to-tf](https://github.com/humanmade/cf-to-tf)

This README provides an overview of the migration process and examples to get you started. For more details, refer to the additional resources and documentation provided.
