# Convert upstream KMMO markdown format docs to AsciiDoc

Use this Ansible playbook to pull upstream KMMO docs from [kernel-module-management/docs](https://github.com/rh-ecosystem-edge/kernel-module-management/tree/main/docs) and convert the markdown source to AsciiDoc using [Kramdoc](https://github.com/asciidoctor/kramdown-asciidoc).

Install the tools: 

```cmd
sudo dnf install ansible
pip install ansible-lint
gem install kramdown-asciidoc
```

Fork this repo to your own copy and clone the fork locally.

Change to the `/kmmo-downstream-docs-staging` repo dir:

```cmd
cd ~/kmmo-downstream-docs-staging
```

Create a Python virtual env (venv): 

```cmd
python3 -m venv venv
source venv/bin/activate
```

Run the conversion:

```cmd
ansible-playbook convert-upstream-kmmo-docs.yaml
```

Converted AsciiDoc files are in the `/out/docs/` folder.
