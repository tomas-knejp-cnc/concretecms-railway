# Použij čistý ConcreteCMS image bez vestavěné DB
FROM ghcr.io/concrete5-community/docker5:9.4.6

WORKDIR /app

# Zkopíruj svůj projekt (application/, packages/, themes/…)
COPY ./app /app

# Nastavení práv
RUN chown -R www-data:www-data /app

# Railway používá port 8080
ENV PORT=8080
RUN sed -i 's/listen 80 default_server;/listen 8080 default_server;/' /etc/nginx/sites-available/default

ENV CCM_DOCKER_NO_DB=true

# Propojení s Railway MySQL
ENV CONCRETE_DB_HOST=${MYSQLHOST}
ENV CONCRETE_DB_USERNAME=${MYSQLUSER}
ENV CONCRETE_DB_PASSWORD=${MYSQLPASSWORD}
ENV CONCRETE_DB_DATABASE=${MYSQLDATABASE}

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
