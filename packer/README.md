# Packer Template

This directory contains the generic packer template.  It runs a bootstrap script
that can be used to set up any dependencies needed by ansible, and then it runs
ansible using the playbook in the current directory.
