# 0x13. Firewall

## Description

This project focuses on understanding, setting up, and managing firewalls to enhance network security. Firewalls are essential components in network security, providing a barrier between trusted and untrusted networks and controlling incoming and outgoing network traffic based on predetermined security rules.

## Learning Objectives

By the end of this project, you should be able to:

- Understand the basics of firewalls and their importance in network security.
- Set up and configure a firewall on a Linux server.
- Create and manage firewall rules to control network traffic.
- Test and verify the effectiveness of the firewall configuration.

## Project Files

- **0-block_all_incoming_traffic_but**: A script that configures the firewall to block all incoming traffic except for specific allowed services.
- **1-port_forwarding**: A script that sets up port forwarding using the firewall.

## How to Use

To use the provided scripts, follow these steps:

1. Ensure you have SSH access to your server. If not, set it up by following the [SSH installation guide](https://www.ssh.com/academy/ssh/installation).
2. Open a terminal or command prompt.
3. Navigate to the directory containing the script you want to run.
4. Execute the script using bash:
   ```bash
   bash script_name
   ```
        - Replace `script_name` with the actual name of the script you want to run.

### Examples

- Block all incoming traffic except for SSH (port 22) and HTTP (port 80) and HTTPS (port 443):
        ```bash
        ./0-block_all_incoming_traffic_but
        ```

- Set up port forwarding from port 8080 to port 80:
        ```bash
	./100-port_forwarding
	```

### Author

- [Martin Olutade](https://github.com/silgenius)`
