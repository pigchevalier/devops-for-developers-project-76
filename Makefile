.PHONY: install prepare deploy

install:
	ansible-galaxy install -r requirements.yml

prepare:
	ansible-playbook -i inventory.ini playbook.yml --tags prepare

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --ask-vault-pass

edit_vault:
	ansible-vault edit group_vars/webservers/vault.yml
