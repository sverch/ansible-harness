# AMI Builder

Example of how to use Vagrant, Ansible, Serverspec, and Packer to build an AMI
with integration tests.

## Setup

Install vagrant and run:

```
./setup.sh
```

This will install the prerequisites, vagrant should be the only dependency as
ansible is configured to run in local mode on the remote machine.

## Test

To create an instance and run the tests, run:

```
vagrant up
```

When you're done, run:

```
vagrant destroy
```

To clean up the instance.

## Packer Build

TODO
