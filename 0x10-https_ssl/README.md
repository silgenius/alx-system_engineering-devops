# 0x10. HTTPS SSL

## Description

Welcome to the 0x10. HTTPS SSL project repository! This project focuses on understanding and implementing HTTPS and SSL/TLS encryption. You'll learn about securing web communications, setting up HTTPS for your web server, and ensuring secure connections. The exercises in this project will help you gain a deeper understanding of web security and encryption protocols.

## Learning Objectives

By the end of this project, you should be able to:

- Understand the basics of HTTPS and SSL/TLS.
- Explain the importance of encrypting web traffic.
- Set up and configure HTTPS for a web server.
- Obtain and install SSL certificates.
- Troubleshoot common issues related to HTTPS and SSL.

## Project Files

- **0-world_wide_web**: A Bash script that displays information about subdomains.
- **1-haproxy_ssl_termination**: A Bash script that configures HAProxy to terminate SSL at the load balancer level.
- **2-haproxy_ssl_termination**: An improved version of the SSL termination script for HAProxy.

## How to Use

To use the provided scripts, follow these steps:

1. Ensure you have SSH access to your server and have the necessary tools installed (e.g., HAProxy).
2. Open a terminal or command prompt.
3. Navigate to the directory containing the script you want to run.
4. Execute the script using bash:
   ```bash
   bash script_name
   ```
   Replace` script_name` with the actual name of the script you want to run.

### Examples

Here are some examples of how to use the scripts:

- Display information about subdomains:
	```bash
	bash 0-world_wide_web
	```

- Configure HAProxy to terminate SSL at the load balancer level:
	```bash
	bash 1-haproxy_ssl_termination
	```

## Author

- [Martin Olutade](https://github.com/silgenius)
