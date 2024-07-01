# Inception

## Description

This project aims to demonstrate the setup of a small infrastructure using Docker and Docker Compose. It includes services like NGINX, WordPress, and MariaDB, all configured to run in separate Docker containers. The project is structured to build Docker images from scratch, without using pre-made images or services like DockerHub, ensuring a hands-on learning experience in system administration and Docker management.

### Diagram expected

![inc](https://github.com/speranos/inception/assets/57815941/3224f10e-a1fc-42f5-91c9-f4ab8db6e82b)


## Project Structure

- **srcs/**: Contains all the configuration files and scripts needed for setting up the Docker containers.
  - **Dockerfile.nginx**: Dockerfile for the NGINX container.
  - **Dockerfile.wordpress**: Dockerfile for the WordPress container.
  - **Dockerfile.mariadb**: Dockerfile for the MariaDB container.
  - **docker-compose.yml**: Defines the services, volumes, and network for the Docker containers.
  - **.env**: Stores environment variables used in the Docker setup.

- **Makefile**: Automates the building and setup of the entire application using Docker Compose.

## Features

- **NGINX**: Configured with TLSv1.2 or TLSv1.3, serving as the entry point into the infrastructure.
- **WordPress**: Installed and configured with php-fpm, running in its own container.
- **MariaDB**: Database service running in its own container, with a volume for persistent storage.
- **Volumes**: 
  - One for the WordPress database.
  - One for the WordPress website files.
- **Docker Network**: Establishes connections between the containers.
- **Automatic Restart**: Containers are configured to restart in case of a crash.
- **Domain Name Configuration**: Setup to point to your local IP address with the format `aoueldma.42.fr`.

## How to Use This Project

### Prerequisites

- Ensure you have Docker and Docker Compose installed on your machine.

### Setup

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/speranos/inception.git
   cd inception
   ```

2. **Environment Variables**:
   - Create a `.env` file in the `srcs` directory and set the necessary environment variables. For example:
     ```
      DB_NAME= Your database Name
      DB_USER= Your database user
      DB_PASS= Your database password
      DB_CONT_NAME= Your database container name
      
      WP_ADMIN_MAIL= Wordpress admin mail
      WP_ADMIN= Wordpress admin user
      WP_ADMIN_PASS= Wordpress admin password
      
      WP_USER_MAIL= Wordpress user mail
      WP_USER=  Wordpress user
      WP_USER_PASS= Wordpress user password
     
     ```

3. **Build and Start the Containers**:
   - Run the Makefile to build and set up the entire application:
     ```bash
     make
     ```

4. **Access the Services**:
   - Open your browser and navigate to `https://aoueldma.42.fr` to access the WordPress site served by NGINX.

### Notes

- Ensure that the domain name `aoueldma.42.fr` is correctly configured to point to your local IP address.
- No passwords are hardcoded in the Dockerfiles. Use environment variables for sensitive information.
