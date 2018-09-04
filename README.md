# Ansible Demo

This is a contrived example of how to package code and tests (ansible and serverspec,
respectively) with a Vagrantfile, and publish it via git.

By using Vagrant, Virtualbox, and Git, each student gets:

- Self-service environment provisioning
- A completely reproducible, ephemeral test instance in which to develop code
- An environment devoid of side effects caused by other students
- A simplified, uniform troubleshooting experience:
  - The username is always `vagrant`
  - The testing URL is always `http://localhost:8080`
  - Troubles?  Just destroy and run `vagrant up` again.
- A portfolio of their achievements while studying a software development class

Bugs in the demo?  Instructors can have students submit pull requests from their own
git repository to the original, or submit their own pull requests for peer review. 

# Prerequisites

Some software must be installed prior to building an environment:

- [git](https://git-scm.com/downloads)
- [virtualbox](https://www.virtualbox.org/)
- [vagrant](https://vagrantup.com/)

# Fork this repo

After creating your own, [free Github account](https://github.com/join), you will want to 
[fork](https://help.github.com/articles/fork-a-repo/) a copy of this repo to your own account. 

Once you have forked this repository into your own account, you can clone a copy of it to
your local machine.  Note that there's a Git submodule included.  Just run 'git submodule init'
from within your repository to download that code.

# "Grading"

## git clone

Anyone can fork this git repository into their own account, and then make their own changes
Anyone who's grading changes to the base repository can, in turn, clone the forked repo back 
onto their own machine and run run 'vagrant up'.  In this case, a passing grade would be a
successful serverspec test.

```
mkdir ~/grading
cd ~/grading
git clone https://github.com/gswallow/ansible-demo.git gswallow
git clone https://github.com/msmith/ansible-demo.git msmith
git clone https://github.com/bsimon/ansible-demo.git bsimon
cd gswallow
vagrant up # test passes
vagrant destroy -f
```

## serverspec

To run serverspec in vagrant, simply run `vagrant up`.  Vagrant will automatically install
ansible and run serverspec.  To clean up your vagrant box, run `vagrant destroy`.
