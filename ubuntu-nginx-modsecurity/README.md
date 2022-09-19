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
