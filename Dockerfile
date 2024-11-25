FROM quay.io/keycloak/keycloak:26.0.6

WORKDIR /opt/keycloak

EXPOSE 8080

CMD ["kc.sh", "start-dev", "--http-port", "8080", "--http-host", "0.0.0.0"]
