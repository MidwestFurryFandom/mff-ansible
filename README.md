Deploy development.ini files to staging: ansible-playbook --private-key $RAMS_ADMIN_KEY -i mff-inventory.yml deploy-dev.yml
Update all the servers' packages:  ansible-playbook --private-key $AWS_ADMIN_KEY -i mff-inventory.yml update-packages.yml
Ensure staging is set to mff-staging branch: ansible-playbook --private-key $RAMS_ADMIN_KEY -i mff-inventory.yml set-staging.yml
