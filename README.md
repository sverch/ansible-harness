# Ansible Harness

Library to abstract away the end to end lifecycle of an instance configured
using Ansible.

## Get Started

From the root of your project, run:

```
git submodule add https://github.com/sverch/ansible-harness
ansible-harness/setup
```

This will install all the following scripts into your Ansible project.

## Test

```
./test all-stages virtualbox
```

The `test` script drives the test lifecycle.  It can create an instance,
provision it using Ansible, and validate it using Serverspec.  Look in the
`serverspec` directory in your project for the test skeleton.

## Package

```
./package ami
```

The `package` script handles building artifacts.  For example, it can provision
an instance, run your Ansible scripts, and save it as an AMI.  This is driven by
`packer`.

## Install

```
./install
```

This script will run the configuration on the local machine.  This is useful,
for example, in cloud-init scripts if you would like to run your playbook at
deploy time.
