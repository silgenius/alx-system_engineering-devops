# 0x0A. Configuration Management

## Description

Welcome to the 0x0A. Configuration Management project repository! This project focuses on the principles and practices of configuration management using Puppet, an open-source software configuration management tool. Puppet allows you to automate the management and configuration of your infrastructure, ensuring consistency and compliance across your systems. In this project, you'll learn how to write Puppet manifests to automate various configuration tasks.

## Learning Objectives

By the end of this project, you should be able to:

- Understand the basics of configuration management and its importance.
- Use Puppet to automate configuration management tasks.
- Write Puppet manifests to manage and configure systems.
- Apply best practices for writing and organizing Puppet code.
- Understand and use Puppet resources, classes, and modules.

## Project Files

- **0-create_a_file.pp**: Puppet manifest that creates a file in `/tmp`.
- **1-install_a_package.pp**: Puppet manifest that installs `puppet-lint`.
- **2-execute_a_command.pp**: Puppet manifest that kills a process named `killmenow`.

## Author

- [Martin Olutade](https://github.com/silgenius)

## How to Use

To use any of the provided Puppet manifests, follow these steps:

1. Ensure you have Puppet installed on your machine. If not, install it by following the [Puppet installation guide](https://puppet.com/docs/puppet/latest/installing_and_upgrading.html).
2. Open a terminal or command prompt.
3. Navigate to the directory containing the Puppet manifest you want to apply.
4. Apply the manifest using the `puppet apply` command:
   ```bash
   sudo puppet apply manifest_name.pp

