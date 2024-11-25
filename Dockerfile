FROM quay.io/keycloak/keycloak:26.0.6

# Указываем рабочую директорию
WORKDIR /opt/keycloak

# Задаём команду запуска
CMD ["start-dev", "--http-host=0.0.0.0"]
