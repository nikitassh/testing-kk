FROM quay.io/keycloak/keycloak:26.0.6

WORKDIR /opt/keycloak

EXPOSE 8080

# Используем команду для запуска Keycloak
CMD ["kc", "start-dev", "--http-port", "${PORT:-8080}", "--http-host", "0.0.0.0"]
