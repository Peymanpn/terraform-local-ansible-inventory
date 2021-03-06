# Local Ansible Inventory

A Terraform module that will render groups of server IP addresses into an Ansible inventory file and output it to the local filesystem at a specified location.

The module will also take arbitrary secrets (certificates, tokens, keys, etc.) and write them to files in a subdirectory of the output path.

it will create a `[all]` as first item in the inventory.

## Usage

```hcl
provider "local" {
  version = "~> 1.3"
}

module "inventory_production" {
  source  = "Peymanpn/ansible-inventory/local"
  servers = {
    manager = list(my_provider_server.manager) # for a single server
    worker = my_provider_server.worker_nodes   # for a list of managers 
  }
  secrets = {
    tls_key  = "-----BEGIN RSA PRIVATE KEY----- MIIEow..."
    tls_cert = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD..."
  }
  output  = "inventory/production"
}
```

## ChangeLog

### 0.4.1

it will create a `[all]` list beside the server - ip map

## Module

Main Terraform registry this code is forked from: [Terraform Registry](https://registry.terraform.io/modules/gendall)