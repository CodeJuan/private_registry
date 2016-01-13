docker run -d -p 5000:5000 --restart=always --name registry  -v /registry/certs:/certs -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/domain.crt -e REGISTRY_HTTP_TLS_KEY=/certs/domain.key -v /registry/docker_registry/:/var/lib/registry registry:2.1



#docker run -d  -p 80:80 -p 443:443 --restart=always --name registry-ui -e ENV_DOCKER_REGISTRY_HOST=192.168.1.173 -e ENV_DOCKER_REGISTRY_PORT=5000 -e ENV_DOCKER_REGISTRY_USE_SSL=1  -e ENV_MODE_BROWSE_ONLY=true  konradkleine/docker-registry-frontend:v2
