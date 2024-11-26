# Используем официальный образ Keycloak
FROM quay.io/keycloak/keycloak:26.0.6

# Устанавливаем рабочую директорию
WORKDIR /opt/keycloak

# Открываем порт 8080 для доступа к сервису
EXPOSE 8080

# Устанавливаем команду для запуска Keycloak в режиме разработки
CMD ["start-dev", "--http-port", "8080", "--http-host", "0.0.0.0"]
