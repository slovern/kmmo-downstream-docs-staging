#!/usr/bin/env bash

ansible-lint -p convert-upstream-kmmo-docs.yaml
ansible-playbook convert-upstream-kmmo-docs.yaml