# 0x0C. Web Server

## Description

Welcome to the 0x0C. Web Server project repository! This project focuses on setting up and configuring a web server using Nginx. Nginx is a powerful, high-performance web server and reverse proxy server. In this project, you'll learn how to install Nginx, configure server blocks, manage server processes, and serve static content.

## Learning Objectives

By the end of this project, you should be able to:

- Understand the basics of web servers and how they work.
- Install and configure Nginx on a server.
- Set up server blocks (virtual hosts) to manage multiple domains.
- Serve static content with Nginx.
- Manage Nginx server processes and configurations.

## Project Files

- **0-transfer_file**: Bash script that transfers a file to a remote server.
- **1-install_nginx_web_server**: Bash script that installs Nginx on a server and configures a basic server block.
- **2-setup_a_domain_name**: Instructions for setting up a domain name and pointing it to your server's IP address.
- **3-redirection**: Nginx configuration file to set up a redirection from one URL to another.
- **4-not_found_page_404**: Nginx configuration file to set up a custom 404 error page.
- **7-puppet_install_nginx_web_server.pp**: Puppet manifest that installs and configures Nginx using Puppet.

## How to Use

To use any of the provided scripts or configuration files, follow these steps:

1. Ensure you have SSH access to your server. If not, set it up by following the [SSH installation guide](https://www.ssh.com/academy/ssh/installation).
2. Open a terminal or command prompt.
3. Navigate to the directory containing the script or configuration file you want to use.
4. Execute the script using bash or apply the configuration file:

   - For bash scripts:
     ```bash
     bash script_name
     ```
   
   - For Puppet manifest:
     ```bash
     sudo puppet apply 7-puppet_install_nginx_web_server.pp
     ```

Replace `script_name` with the actual name of the script you want to run.

### Examples

Here are some examples of how to use the scripts:

- Transfer a file to a remote server:
  ```bash
  bash 0-transfer_file
  ```

- Install Nginx on a server and configure a basic server block:
  ```bash
  bash 1-install_nginx_web_server
  ```

- Apply Puppet manifest to install and configure Nginx:
  ```bash
  sudo puppet apply 7-puppet_install_nginx_web_server.pp
  ```

## Author

- [Martin Olutade](https://github.com/silgenius)

