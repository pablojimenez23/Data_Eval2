FROM mysql:8.0

ENV MYSQL_DATABASE=proyecto_db
ENV MYSQL_USER=app_user
ENV MYSQL_PASSWORD=Password123!
ENV MYSQL_ROOT_PASSWORD=RootPassword123!

COPY 01_creacion_base_datos.sql /docker-entrypoint-initdb.d/01_creacion_base_datos.sql
COPY 02_backup_y_mantenimiento.sql /docker-entrypoint-initdb.d/02_backup_y_mantenimiento.sql

EXPOSE 3306