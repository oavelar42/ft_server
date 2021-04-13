mkdir /var/www/localhost

chown -R www-data /var/www/localhost

rm -rf /etc/nginx/sites-enabled/default
rm -rf /etc/nginx/sites-available/default

mv nginx.conf /etc/nginx/sites-available/default

ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default 

service mysql start

echo "CREATE DATABASE wordpress;" | mysql -u root
echo "CREATE USER 'wordpress'@'localhost';" | mysql -u root
echo "SET password FOR 'wordpress'@'root' = password('password');" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY 'password';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root

mkdir /var/www/localhost/phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-all-languages.tar.gz

tar -zxf phpMyAdmin-5.1.0-all-languages.tar.gz --strip-components=1 -C /var/www/localhost/phpmyadmin
rm -rf phpMyAdmin-5.1.0-all-languages.tar.gz

mv ./config.inc.php /var/www/localhost/phpmyadmin

mkdir /var/www/localhost/wordpress
wget http://wordpress.org/latest.tar.gz
tar -zxf latest.tar.gz --strip-components=1 -C /var/www/localhost/wordpress
rm -rf latest.tar.gz
mv ./wp-config.php /var/www/localhost/wordpress

apt-get -y install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

wget -O wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
mv wp /usr/local/bin/

service php7.3-fpm start
service nginx start

echo "
             :::      ::::::::
           :+:      :+:    :+:   
         +:+ +:+         +:+    
       +#+  +:+       +#+      
     +#+#+#+#+#+   +#+         
          #+#    #+#         
         ###   ########.lisboa 
"
bash
