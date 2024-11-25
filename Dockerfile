FROM quay.io/keycloak/keycloak:26.0.6

WORKDIR /opt/keycloak

EXPOSE 8080

CMD ["start-dev", "--http-port=${PORT:-8080}", "--http-host=0.0.0.0"]
