# Dockerfile

Build docker image
```
docker build . -t ubuntu-nginx-modsecurity
```

Run a container with the docker image.
```
docker run -p 80:80 ubuntu-nginx-modsecurity
```
Chrome [http://[::1]/](http://[::1]/)

### ECR
```
docker tag ubuntu-nginx-modsecurity:latest 498902663574.dkr.ecr.us-east-2.amazonaws.com/modsecurity:1.23.1
```

```
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 498902663574.dkr.ecr.us-east-2.amazonaws.com
# Login Succeeded
```
Reference: [ECR CLI](https://docs.aws.amazon.com/AmazonECR/latest/userguide/getting-started-cli.html)

```
docker push 498902663574.dkr.ecr.us-east-2.amazonaws.com/modsecurity:1.23.1
```
