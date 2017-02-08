# Devbox

I'm using Ubuntu instead of Mac.

Getting Started
---------------

1. **Install virtualbox**

   ```
   $ sudo apt-get install virtualbox
   ```

2. **Install vagrant**

   ```
   $ sudo apt-get install vagrant
   ```

3. **Install packer**

   Follow installation instruction from [Packer's docs](https://www.packer.io/intro/getting-started/setup.html).

4. **Install Ansible**

   ```
   $ sudo apt-get install software-properties-common
   $ sudo apt-add-repository ppa:ansible/ansible
   $ sudo apt-get update
   $ sudo apt-get install ansible
   ```

5. **Clone the repo**

   ```
   $ git clone https://github.com/r0y3/devbox.git
   $ cd devbox/packer
   $ packer build devbox.json
   $ cd ..
   ```

6. **Add created box to vagrant**

   ```
   $ vagrant box add devbox packer/builds/devbox.box
   $ vagrant up
   ```
