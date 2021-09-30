# don't change this line
FROM korney4eg/nginx-php:latest

# your code goes here
# Make nginx use app.conf configuration to properly render php files
# Make sure that index.php file is available in browser
# expose needed ports
RUN apt install php7.3-fpm -y
COPY index.php /var/www/app/
ENV VERSION 1.0
COPY app.conf /etc/nginx/conf.d/

EXPOSE 8080
# don't change this line
CMD ["/usr/bin/supervisord"]
