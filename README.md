A set of playbooks for managing our various hosts:

### All Hosts
* Update all the servers' packages:  `ansible-playbook --private-key $AWS_ADMIN_KEY -i mff-inventory.yml update-packages.yml`

### RAMS Staging
* Deploy development.ini: `ansible-playbook --private-key $RAMS_ADMIN_KEY -i mff-inventory.yml staging-deploy-dev.yml`
* Ensure staging is set to mff-staging branch: `ansible-playbook --private-key $RAMS_ADMIN_KEY -i mff-inventory.yml staging-set-staging-branch.yml`

### RAMS Production
* Clone correct repos and deploy dev.ini files: `ansible-playbook --private-file $RAMS_ADMIN_KEY -i mff-inventory.yml new-rams-server.yml` (Also works for any new server, really)

### Scripts to help
```
#!/bin/bash
if [ -z ${RAMS_CONF} ]; then
  echo 'RAMS_CONF must be set'
  exit 1
fi
if [ -z ${MFF_ANS} ]; then
  echo 'MFF_ANS must be set'
  exit 1
fi
if [ -z ${1} ]; then
  echo 'Must specify a target: staging|production'
  exit 1
fi
ansible-playbook -i $MFF_ANS/mff-inventory.yml --private-key $RAMS_ADMIN_KEY $MFF_ANS/$1-deploy-dev.yml
```
