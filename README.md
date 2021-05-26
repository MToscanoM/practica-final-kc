# practica-final-kc

ACME SHOP

Usamos la webapp ACME de la práctica del módulo de CI-CD y la desplegaremos en un cluster en GKE.

1. Usamos Terraform para crear el cluster y configurar los nodos.
  Para que Terraform pueda conectar con el proyecto de GCP y al cluster en GKE:

'gcloud auth application-default login'

'terraform init'


2. 

'kubectl apply -f k8s/'
