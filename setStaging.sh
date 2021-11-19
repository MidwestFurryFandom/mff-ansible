#!/bin/bash
if [ -z ${RAMS_CONF} ]; then
  echo 'RAMS_CONF must be set'
  exit 1
fi
if [ -z ${MFF_ANS} ]; then
  echo 'MFF_ANS must be set'
  exit 1
fi
#if [ -z ${1} ]; then
#  echo 'Must specify a target: staging|production'
#  exit 1
#fi
ansible-playbook -i $MFF_ANS/mff-inventory.yml --private-key $RAMS_ADMIN_KEY $MFF_ANS/staging-set-staging-branch.yml
