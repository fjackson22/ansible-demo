# Ansible Demo

This demo is for use by another project (though you may use it with Vagrant).

# Prerequisites

Some software must be installed prior to building an environment:

- vagrant

# Testing

## serverspec

Serverspec runs within a vagrant box, as well as during an EC2 instance boot through cloud-init.

To run serverspec in vagrant, simply run `vagrant up`.  Vagrant will automatically install
ansible and run serverspec.  To clean up your vagrant box, run `vagrant destroy`.
