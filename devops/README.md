# VanHack Sao Paulo Mission - 2019

## Traction Guest Challenge - Smart Spot

### DevOps Pipeline - By Antonio Matos

Tools envolved:

- Jenkins (for CI/CD automation)
- SonarQube (for code analysis + unit test coverage)
- Docker (for image build and local container provision)
- DockerHub (to store docker images that were validated by the test pyramid)
- Kubernetes (to orchestrate container provision on a clustered AWS EC2)
- AWS EC2 (to provide machines for the Kubernetes cluster - 1 Master + 2 Nodes)
- Kops (to setup the AWS EC2 provision script and generate Terraform IaC scripts)
- Terraform (to automate provisioning of the Kubernetes cluster)
- Draw.io (for creating the diagram)
