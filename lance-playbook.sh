export ANSIBLE_CONFIG=./ansible.cfg
# ansible-playbook --extra-vars="ansible_become_pass=xl......" ./rclone+borgmatic-intoDocker.yml
ansible-playbook -b ./rclone+borgmatic-intoDocker.yml
# lancer à partir de wsl (plutôt kali que ubuntu)

## TODO: pour une raison qui m’échappe, ce shell ne marche pas quand on l’appelle, mais si on tape les commandes qu’il contient dans un shell WSL, ça marche