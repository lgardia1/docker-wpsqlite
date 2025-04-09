FROM wordpress
WORKDIR /var/www/html/
EXPOSE 80
COPY ./conf/wp-config.php ./
COPY ./conf/db.php ./wp-content/

RUN apt update -y && apt install -y sqlite3 && rm -f ./wp-config-sample.php  && chown -R www-data:www-data ./ && chmod -R 755 ./ 

