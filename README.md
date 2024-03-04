# Inception Project

## Overview

The Inception project is designed to enhance system administration skills by utilizing Docker to virtualize multiple services within a personal virtual machine setup. This involves creating Docker images and managing them through docker-compose, all within a custom-configured virtual environment.
[read the subject](https://github.com/garenaud/Inception/blob/main/Inception.subject.pdf "Inception")

## Project Goals

- To virtualize services such as NGINX (with TLSv1.2 or TLSv1.3), WordPress + php-fpm, and MariaDB using Docker containers.
- To manage application setup and configuration using a Makefile and docker-compose.yml.
- To ensure secure communication and data storage by implementing volumes for WordPress database and files, and by adhering to best practices for Dockerfile creation and environment variable management.

## Requirements

- Virtual Machine setup for project execution.
- Docker and Docker Compose for containerization and service management.
- Custom Dockerfiles for each service, avoiding the use of ready-made Docker images (except for base Alpine/Debian images).
- Configuration of a network bridge to facilitate container communication.
- Adherence to specific rules regarding service setup, security, and domain name configuration.

## Installation and Setup

1. Clone the repository to your local machine.
2. Navigate to the project directory and ensure Docker and Docker Compose are installed.
3. Run the `make` command to build and start the services using Docker Compose.
4. Configure your domain name to point to your local IP address, following the naming convention `[login].42.fr`.

## Configuration

- Place all required configuration files in the `srcs` directory.
- Use a `.env` file to manage environment variables securely, ensuring no sensitive information is committed to the repository.
- Refer to the project's `docker-compose.yml` for service definitions and network configurations.
