service nginx start
service mysql start
service php7.3-fpm start

# read if we are allready change the AUTOINDEX env in container
source ~/.bashrc
echo $AUTOINDEX | ./autoindex.sh
echo $AUTOINDEX

bash
