# Learn Terraform - Provision an EKS Cluster

This repo is a companion repo to the [Provision an EKS Cluster learn guide](https://learn.hashicorp.com/terraform/kubernetes/provision-eks-cluster), containing
Terraform configuration files to provision an EKS cluster on AWS.  [Git repository](https://github.com/hashicorp/learn-terraform-provision-eks-cluster)

## Terraform 

### macOS shell commands
```
brew install k9s        # 0.26.3
brew install awscli     # 2.7.31
brew install terraform  # 1.2.9
brew install helm       # 3.9.4
brew install dive       # 0.10.0
```

### Windows 11 build 25201 shell commands
```
choco upgrade all --yes
choco install k9s                 # 0.26.3
choco install kubernetes-cli      # 1.25.1
choco install kubernetes-helm     # 3.9.4
choco install terraform           # 1.2.8
winget install --id Amazon.AWSCLI # 2.7.32
```

command initializes a working directory containing Terraform configuration files
```
terraform init
```
executes the actions proposed in a Terraform plan.  12 mins 18.975 seconds
```
terraform apply
```

destroy all remote objects managed by a particular Terraform configuration.  10 minutes
```
terraform destroy
```

Configures kubectl so that you can connect to an Amazon EKS cluster.
```
aws eks update-kubeconfig --region us-east-2 --name eks-BhumBtU0
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

---

### Docker
```
docker run -p 80:80 nginx
```
Chrome [http://[::1]/](http://[::1]/)

```
docker tag nginx:latest 498902663574.dkr.ecr.us-east-2.amazonaws.com/nginx:1.23.1
```

### ECR
```
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 498902663574.dkr.ecr.us-east-2.amazonaws.com
# Login Succeeded
```
Reference: [ECR CLI](https://docs.aws.amazon.com/AmazonECR/latest/userguide/getting-started-cli.html)

### Docker
```
docker push 498902663574.dkr.ecr.us-east-2.amazonaws.com/nginx:1.23.1
```

### Helm
```
helm create helmchart
helm install helmchart helmchart/
```

Port Forwarding to Access Applications in a Cluster
```
kubectl port-forward service/helmchart 80:80
```
Chrome [http://[::1](http://[::1])

```
helm uninstall helmchart
```
Reference: [Helm Chart](https://phoenixnap.com/kb/create-helm-chart)

