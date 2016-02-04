# Mule cookbook:

Vagrant/ Chef cookbook to install Mule and its dependencies in a virtual machine.

### works with the following vagrant boxes:
- nrel/CentOS-6.7-x86_64
- bento/ubuntu-14.04

## installation

- Run:
```sh
$ git clone https://github.com/shopkeep/mule-cookbook.git
$ cd mule-cookbook
$ vagrant plugin install vagrant-omnibus
```

- Edit Vagrantfile with desired box OS (**nrel/CentOS-6.7-x86_64** or **bento/ubuntu-14.04**)
- Edit attributes/default.rb with desired mule and Java versions
- Run:
```sh
$ vagrant up
```
- Run:
```sh
$ vagrant ssh
$ service mule start
```
