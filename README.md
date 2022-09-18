# Learn Terraform - Provision an EKS Cluster

This repo is a companion repo to the [Provision an EKS Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-eks-cluster), containing
Terraform configuration files to provision an EKS cluster on AWS.

## Terraform 

### macOS shell commands
```
brew install k9s
brew install awscli
brew install terraform
```

command initializes a working directory containing Terraform configuration files
```
terraform init
```

executes the actions proposed in a Terraform plan.
```
terraform apply
```


destroy all remote objects managed by a particular Terraform configuration.
```
terraform destroy
```
10 minutes

Configures kubectl so that you can connect to an Amazon EKS cluster.
```
aws eks update-kubeconfig --region us-east-2 --name education-eks-AigzxMHn
```

### Provider
Versioned code which is used to communicate with an external infrastructure provider.
- [AWS](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)<br/>
- [Kubernetes](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs)<br/>

### Module
A logical grouping of resources which can be configured and deployed together.
- [EKS](https://registry.terraform.io/modules/terraform-aws-modules/eks/aws/latest)<br/>
- [VPC](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)


[Quick reference](https://www.jeremyjordan.me/terraform-quick-reference/)