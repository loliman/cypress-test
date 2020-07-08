FROM debian:stable

USER root
COPY setup.sh .
RUN ./setup.sh