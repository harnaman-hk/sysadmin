# Docker
## 1. Containerizing Node Application
I cloned the [baat-cheet](https://github.com/KamandPrompt/baat-cheet) application and built a docker image to deploy it.
### Image on Docker Hub
- [crypticphoenix/baatcheetnode](https://hub.docker.com/repository/docker/crypticphoenix/baatcheetnode)
### Learnings
- Learnt about virtual machines and docker containers and the pros and cons of both
- Explored the process of building a docker image

## 3. Docker volumes
``docker run -dit --name my-apache-app -p 8080:80 -v /path/to/files/on/your/system:/usr/local/apache2/htdocs/ httpd:2.4``

The above command can be used to have Apache's `/usr/local/apache2/htdocs/` point to any location on our system where we wish to keep the relevant files for our website.

Docker volumes enable us to decouple container from storage. 
We can run an application by having the application software in the container and application data in a docker volume. 
We may stop/delete the docker container but the files/data in a docker volume remain intact. 
This allows us to share data between different containers, reuse data for multiple applications and prevent data loss.