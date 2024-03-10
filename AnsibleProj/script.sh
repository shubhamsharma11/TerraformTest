# Install Ansible in VMs
sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible

# Create Private and Public Key
ssh-keygen
cd .ssh
cat id_rsa.pub >> authorized_keys
cd ..
touch inventory
cat inventory 
ansible-playbook -i inventory /$PWD/AnsibleProjects/Test.yaml