#	Use debian:10 OS as primary in this container
FROM    debian:buster

#	Set working directory where gona download all nessary files execute commands
WORKDIR /var/www/html

ENV	AUTOINDEX=on

#	Copy all nessary source configuration files from local dir "srcs" to the WORKDIR
COPY    ./srcs/ ./

#	Update system
RUN     apt update && apt upgrade -y

#	Install all nessary programms
RUN	apt install -y wget nginx mariadb-server php7.3 php-mysql	\
        php-fpm php-pdo php-gd php-cli php-mbstring vim

#	Setup nginx conf && install phpMyAdmin && install WrodPress && generate SSLkey
RUN	mv nginx.conf /etc/nginx/sites-available && rm -f /etc/nginx/sites-available/default	\
	/etc/nginx/sites-enabled/default && ln -s /etc/nginx/sites-available/nginx.conf		\
	/etc/nginx/sites-enabled/nginx.conf 							\
        && wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-english.tar.gz   \
        && tar -xf phpMyAdmin-5.0.1-english.tar.gz && rm -rf phpMyAdmin-5.0.1-english.tar.gz    \
        && mv phpMyAdmin-5.0.1-english phpmyadmin && wget https://wordpress.org/latest.tar.gz	\
	&& tar -xvzf latest.tar.gz && rm -rf latest.tar.gz &&					\
	mv wp-config.php /var/www/html/wordpress && mv config.inc.php /var/www/html/phpmyadmin	\
	&& openssl req -x509 -nodes -days 365 -subj "/C=RU" -newkey rsa:4096			\
	-keyout /etc/ssl/nginx-selfsigned.key -out /etc/ssl/nginx-selfsigned.crt &&		\
	chown -R www-data:www-data * && chmod -R 755 /var/www/*

RUN	./init.sh && ./create_base.sh && echo "export AUTOINDEX=$AUTOINDEX" >> /root/.bashrc

#	Open 80 and 443 ports for connecting to website
EXPOSE  80 443


ENTRYPOINT     bash init.sh
