# Ansible Demo

This is a contrived example of how to package code and tests (ansible and serverspec,
respectively) with a Vagrantfile, and publish it via git.

# Prerequisites

Some software must be installed prior to building an environment:

- [vagrant](https://vagrantup.com/)
- [virtualbox](https://www.virtualbox.org/)

# "Grading"

## git clone

Anyone can fork this git repository into their own account, and then make their own changes
Anyone who's grading changes to the base repository can, in turn, clone the forked repo back 
onto their own machine and run run 'vagrant up'.  In this case, a passing grade would be a
successful serverspec test.

## serverspec

To run serverspec in vagrant, simply run `vagrant up`.  Vagrant will automatically install
ansible and run serverspec.  To clean up your vagrant box, run `vagrant destroy`.
