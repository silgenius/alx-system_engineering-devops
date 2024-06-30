# 0x0B. SSH

## Description

Welcome to the 0x0B. SSH project repository! This project focuses on using Secure Shell (SSH) for secure communication between systems over a network. SSH is a cryptographic network protocol that provides a secure channel over an unsecured network. It is widely used for accessing and managing remote servers and systems. In this project, you'll learn how to configure and use SSH to securely connect to remote machines.

## Learning Objectives

By the end of this project, you should be able to:

- Understand the basics of SSH and its importance for secure communication.
- Generate and use SSH keys for secure authentication.
- Configure SSH for remote connections.
- Use SSH to connect to remote servers and execute commands.
- Transfer files securely using SSH.

## Project Files

- **0-use_a_private_key**: Bash script that uses an SSH private key to connect to a remote server.
- **1-create_ssh_key_pair**: Bash script that creates an SSH key pair.
- **2-ssh_config**: SSH client configuration file that sets up custom SSH configurations.
- **100-puppet_ssh_config.pp**: Puppet manifest that configures SSH client using Puppet.

## How to Use

To use any of the provided scripts, follow these steps:

1. Ensure you have SSH installed on your machine. If not, install it by following the [SSH installation guide](https://www.ssh.com/academy/ssh/installation).
2. Open a terminal or command prompt.
3. Navigate to the directory containing the script or configuration file you want to use.
4. Execute the script using bash or apply the configuration file:

   - For bash scripts:
     ```bash
     bash script_name
     ```
   
   - For Puppet manifest:
     ```bash
     sudo puppet apply 100-puppet_ssh_config.pp
     ```

Replace `script_name` with the actual name of the script you want to run.

## Author

- [Martin Olutade](https://github.com/silgenius)

