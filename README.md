A set of playbooks for managing our various hosts:

### All Hosts
* Update all the servers' packages:  `ansible-playbook --private-key $AWS_ADMIN_KEY -i mff-inventory.yml update-packages.yml`

### RAMS Staging
* Deploy development.ini: `ansible-playbook --private-key $RAMS_ADMIN_KEY -i mff-inventory.yml staging-deploy-dev.yml`
* Ensure staging is set to mff-staging branch: `ansible-playbook --private-key $RAMS_ADMIN_KEY -i mff-inventory.yml staging-set-staging-branch.yml`

### RAMS Production
* Clone correct repos and deploy dev.ini files: `ansible-playbook --private-file $RAMS_ADMIN_KEY -i mff-inventory.yml new-rams-server.yml` (Also works for any new server, really)

### Environment Dependencies
* `RAMS_CONF` - Where your canonical development.ini files live
* `MFF_ANS` - Wherever you cloned this project

### Scripts to help
Run `sendConfig.sh` to deploy your config. It packs up the playbook command and does a little enivonrment verification first
