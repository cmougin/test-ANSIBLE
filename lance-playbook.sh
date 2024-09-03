 export ANSIBLE_CONFIG=./ansible.cfg
 # ansible-playbook --extra-vars="ansible_become_pass=xl......" ./rclone+borgmatic-intoDocker.yml
 ansible-playbook -b ./rclone+borgmatic-intoDocker.yml
