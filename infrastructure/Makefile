.PHONY: create-dev
create-dev:
	aws cloudformation create-stack --stack-name AirflowECSCluster --template-body file\://./main.yaml --parameters file\://./dev.json


.PHONY: delete-dev
delete-dev:
	aws cloudformation delete-stack --stack-name AirflowECSCluster 

.PHONY: validate-dev
validate-dev:
	aws cloudformation validate-template --template-body file\://./main.yaml