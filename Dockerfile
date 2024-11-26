FROM quay.io/keycloak/keycloak:26.0.6


WORKDIR /opt/keycloak


EXPOSE 8080


# ENV KEYCLOAK_HTTP_ENABLED=false
# ENV KEYCLOAK_HTTPS_ENABLED=true
# ENV PROXY_ADDRESS_FORWARDING=true
# ENV KEYCLOAK_HTTPS_PORT=8443


CMD ["start-dev", "--http-port", "8080", "--http-host", "0.0.0.0"]
