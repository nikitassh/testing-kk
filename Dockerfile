# Используем официальный образ Keycloak
FROM quay.io/keycloak/keycloak:26.0.6

# Устанавливаем рабочую директорию
WORKDIR /opt/keycloak

# Открываем порт 8080 для доступа к сервису
EXPOSE 8080

# Настройки для работы через HTTPS
ENV KEYCLOAK_HTTP_ENABLED=false
ENV KEYCLOAK_HTTPS_ENABLED=true
ENV PROXY_ADDRESS_FORWARDING=true
ENV KEYCLOAK_HTTPS_PORT=8443

# Указываем порт, на котором Keycloak будет работать
CMD ["start-dev", "--http-port", "8080", "--http-host", "0.0.0.0"]
