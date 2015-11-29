README.md: README.org
	docker run -v `pwd`:/source jagregory/pandoc --from=org --to=markdown --output=$@ $<
	doctoc --title '' $@

create:
	terraform apply -var region=us-west-1 -state=us-west-1.tfstate -var-file=~/.ssh/terraform.tfvars

destroy:
	terraform destroy -force -var region=us-west-1 -state=us-west-1.tfstate -var-file=~/.ssh/terraform.tfvars
