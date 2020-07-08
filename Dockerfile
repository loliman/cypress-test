FROM debian:stable

COPY setup.sh .
RUN ./setup.sh