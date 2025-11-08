# Použij oficiální ConcreteCMS image s full instalací
FROM ghcr.io/concrete5-community/docker5:9.4.6-full

# Nastavení pracovního adresáře
WORKDIR /app

# Railway používá port 8080 místo 80
ENV PORT=8080
RUN sed -i 's/listen 80 default_server;/listen 8080 default_server;/' /etc/nginx/sites-available/default

# Předání proměnných pro databázi (pokud používáš Railway MySQL plugin)
ENV CONCRETE_DB_HOST=${MYSQLHOST}
ENV CONCRETE_DB_USERNAME=${MYSQLUSER}
ENV CONCRETE_DB_PASSWORD=${MYSQLPASSWORD}
ENV CONCRETE_DB_DATABASE=${MYSQLDATABASE}

EXPOSE 8080

# Spustí výchozí entrypoint (ten z docker5 image)
ENTRYPOINT ["/entrypoint.sh"]
