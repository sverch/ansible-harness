# Ansible Harness

Library to abstract away the end to end lifecycle of an instance configured
using Ansible.  The user experience for this is modeled after [Test
Kitchen](https://github.com/test-kitchen/test-kitchen).

## Dependencies

First, install vagrant.  If you are using the virtualbox backend, you need to
install VirtualBox.

Then, install Ansible.  This is used to configure the machines both in the test
and the build.

Serverspec is automatically installed by the `test` script as a vagrant plugin.

## Get Started

From the root of your project, run:

```
git submodule add https://github.com/sverch/ansible-harness
ansible-harness/setup
```

This will install all the following scripts into your Ansible project.

## Test

```
./test full-cycle virtualbox
```

The `test` script drives the test lifecycle.  It can create an instance,
provision it using Ansible, and validate it using Serverspec.  Look in the
`serverspec` directory in your project for the test skeleton.

## Build

```
./build ami
```

The `build` script handles building artifacts.  For example, it can provision an
instance, run your Ansible scripts, and save it as an AMI.  This is driven by
`packer`.

## Install

```
./install
```

This script will run the configuration on the local machine.  This is useful,
for example, in cloud-init scripts if you would like to run your playbook at
deploy time.
