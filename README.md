# Ansible Harness

Template for an image built by Ansible using Packer that includes Serverspec
tests.

## Get Started

From the root of your ami directory, run:

```
git submodule add https://github.com/sverch/ansible-harness
ansible-harness/setup
```

Then, create a `vars.json` file for packer.  You can use the `amifind.sh` script
to help you find an AMI ID.  It should look something like this:

```
{
    "subnet_id": "subnet-0458988d178459888",
    "ami_id": "ami-03597b1b84c02cf7b",
    "ami_type": "test"
}
```

Next, install dependencies:

```
bundle install
./install-packer-serverspec-plugin.sh
```

Then install your ansible roles:

```
ansible-galaxy install -r requirements.yml -p roles
```

Now you can run packer to build your image:

```
packer validate -var-file vars.json packer/template.json
packer build -var-file vars.json packer/template.json
```
