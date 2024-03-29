install:
	ansible-galaxy install -r requirements.yml
encrypt:
	ansible-vault encrypt --vault-password-file vault-password group_vars/webservers/vault.yml
decrypt:
	ansible-vault decrypt --vault-password-file vault-password group_vars/webservers/vault.yml
deploy:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault-password --tags "deploy"
setup:
	ansible-playbook playbook.yml -i inventory.ini --vault-password-file vault-password --tags "setup"
