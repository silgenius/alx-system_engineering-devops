# 0x0F. Load Balancer

## Description

Welcome to the 0x0F. Load Balancer project repository! This project focuses on understanding and implementing load balancing to improve the availability and reliability of web applications. Load balancing helps distribute incoming network traffic across multiple servers, ensuring no single server becomes overwhelmed. In this project, you will learn about different load balancing algorithms, how to configure a load balancer, and how to set up a distributed web infrastructure.

## Learning Objectives

By the end of this project, you should be able to:

- Understand the concept of load balancing and its importance.
- Differentiate between various load balancing algorithms.
- Set up and configure a load balancer.
- Implement load balancing in a web infrastructure.
- Monitor and troubleshoot a load-balanced setup.

## Project Files

- **0-custom_http_response-header**: Configures a custom HTTP response header.
- **1-install_load_balancer**: Installs and configures HAProxy as a load balancer on a server.
- **2-puppet_custom_http_response-header.pp**: Puppet manifest that configures a custom HTTP response header.

## How to Use

To use any of the provided scripts or configuration files, follow these steps:

1. Ensure you have SSH access to your servers. If not, set it up by following the [SSH installation guide](https://www.ssh.com/academy/ssh/installation).
2. Open a terminal or command prompt.
3. Navigate to the directory containing the script or configuration file you want to use.
4. Execute the script using bash or apply the configuration file using Puppet:

   - For bash scripts:
     ```bash
     bash script_name
     ```
   
   - For Puppet manifest:
     ```bash
     sudo puppet apply script_name.pp
     ```

Replace `script_name` with the actual name of the script or configuration file you want to run.

### Examples

Here are some examples of how to use the scripts:

- Install and configure HAProxy as a load balancer:
  ```bash
  bash 1-install_load_balancer
  ```

- Apply Puppet manifest to configure a custom HTTP response header:
  ```bash
  sudo puppet apply 2-puppet_custom_http_response-header.pp
  ```


## Author

- [Martin Olutade](https://github.com/silgenius)

