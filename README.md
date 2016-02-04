# Vagrantfile for Mule and ActiveMQ separate instances


Vagrant uses Chef to create a Vagrant box with Mule, and another with ActiveMQ.

### Requirements

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads). Tested on 5.0.x.
- [Vagrant](http://www.vagrantup.com/downloads.html). Tested on 1.8+
- Vagrant plugin [omnibus](https://github.com/chef/vagrant-omnibus)

### Installation

Download and install both VirtualBox and Vagrant for your particular operating system.

Once those are downloaded, open up a terminal. We'll need to clone this repository and setup vagrant:

```bash
git clone https://github.com/stenio123/vagrant-chef-mule-activemq.git mule-activemq
cd mule-activemq
```

Open the project in your favorite IDE, and edit

- Vagrantfile : to change exposed ports to host/ from guest
- /cookbooks/mule/attributes : in case you require specific versions of mule
- /cookbooks/activemq/attributes : in case you require specific versions of mule

Now we need to setup the vagrant installation. This is pretty easy:

```bash
vagrant up
```

#### Accessing machines

#### Using Vagrant, type
```bash
vagrant ssh mule
```
or

```bash
vagrant ssh activemq
```

And "exit" to leave.

#### Using VirtualBox graphic interface
You can connect to either with user "vagrant", pass "vagrant"

## License
#### Cookbooks have different license, check their folders.

### Vagrantfile is MIT

Copyright (c) 2016 Stenio Ferreira

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
