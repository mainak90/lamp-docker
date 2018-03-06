FROM andrewklau/centos-lamp

RUN mkdir /app && cd /app && git clone https://github.com/mainak90/lamp-docker.git
RUN cd /app/lamp-docker/_install && mysql -u root < 01-create-database.sql && mysql -u root < 02-create-table-song.sql && mysql -u root < 03-insert-demo-data-into-table-song.sql

CMD cp -r /opt/lamp-docker/application /app/lamp-docker/public /var/www/html