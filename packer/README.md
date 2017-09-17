This is where the packer templates should go.  Right now it's just a
placeholder, see https://www.packer.io/docs/templates/index.html.

I tried to get packer building a virtualbox image as an artifact, but that was
not as simple as it sounded.  See:

- http://kappataumu.com/articles/creating-an-Ubuntu-VM-with-packer.html
- https://github.com/hashicorp/packer/issues/869

Building an AMI should have better support.

I should also run serverspec as part of the AMI build:
https://github.com/garethr/packer-serverspec-example.
