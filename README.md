A set of playbooks for managing our various hosts:

### All Hosts
* Update all the servers' packages:  `ansible-playbook --private-key $AWS_ADMIN_KEY -i mff-inventory.yml update-packages.yml`

### RAMS Staging
* Deploy development.ini: `ansible-playbook --private-key $RAMS_ADMIN_KEY -i mff-inventory.yml staging-deploy-dev.yml`
* Ensure staging is set to mff-staging branch: `ansible-playbook --private-key $RAMS_ADMIN_KEY -i mff-inventory.yml staging-set-staging-branch.yml`
