#!/bin/bash

# apt update
# apt upgrade -y
# apt install curl -y
# apt install php php-fpm php-mysql -y
# curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# mv wp-cli.phar /usr/local/bin/wp
# wp core download --allow-root
# php-fpm -F

apt-get update
apt-get upgrade -y
apt-get install curl -y
apt-get install -y php7.3 php7.3-fpm php7.3-mysql default-mysql-client
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
mkdir /run/php #Creates a directory where PHP-FPM will store its socket file for handling FastCGI connections.
php-fpm7.3 -F


#     Database Configuration: Your PHP application needs to be configured with the necessary database connection parameters (e.g., database host, username, password, database name). This information is usually stored in a configuration file or environment variables.

#     Database Connection: In your PHP code, you would use the appropriate database extension (e.g., mysqli, PDO) to create a connection to the database server using the provided configuration.

#     Execute Queries: Once the connection is established, your PHP code can send SQL queries to the database using functions provided by the database extension. For example, you can use mysqli_query() or PDO::query().

#     Process Results: The database will process the query and return results (if applicable). Your PHP code can then fetch and process the results.

#     Close Connection: After your PHP script has finished interacting with the database, it should close the database connection using mysqli_close() or PDO::null.

# It's important to follow best practices for handling database connections, such as using prepared statements to prevent SQL injection, and closing connections when they are no longer needed to conserve resources.

# Remember that PHP is a server-side language, and the interactions with the database occur on the server where your PHP code is hosted. The web server (e.g., Nginx) handles incoming HTTP requests and communicates with PHP-FPM to execute PHP code, which, in turn, can interact with the database as needed.

# So, in summary, to listen for connections from a database, you don't use PHP-FPM directly. Instead, your PHP application code manages the database connections and interactions with the database server. PHP-FPM handles the execution of your PHP application code in response to incoming web server requests.