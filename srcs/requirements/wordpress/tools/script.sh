#!/bin/bash


    data_name="ahmed"
    data_user="ahbajaou"
    data_pwd="test"
    root_pass="root"

    wordpress_name="ahmed"
    wordpress_email="ahbajaou@gmail.com"
    wordpress_url="ahbjaou.fr"
    wordpress_pass="root"
    

    # apt-get update && apt-get install curl 

    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    
    php wp-cli.phar --info
     
    chmod +x wp-cli.phar 
    sudo mv wp-cli.phar /usr/local/bin/wp


    wp config create --dbname=${data_name} --dbuser=${data_user}  --prompt=${data_pwd} 
    1/10 [--dbpass=<dbpass>]: type_your_password
    Success: Generated 'wp-config.php' file.


    wp core install --url=${wordpress_url} --title="CHEBCHOUB" --admin_name=${wordpress_name} --admin_password=${wordpress_pass} --admin_email=${wordpress_email}