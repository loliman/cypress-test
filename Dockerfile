FROM jenkins/jenkins:lts

USER root
COPY setup.sh .
RUN ./setup.sh