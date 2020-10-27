FROM nginx:latest

RUN apt-get update

RUN echo "a copy of nginx image used for deployment practice"

ENV note="Hello from Dockerfile!!!"
ENV DOCKERVERSION=18.03.1-ce

USER root
# Get docker (for docker-in-docker)
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz