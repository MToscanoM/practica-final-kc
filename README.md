# Proyecto Final BootCamp DevOps III
# ACME SHOP by DevUpss "team" :)

**Descripción del proyecto**

Decidimos usar GCP, desplegar una app en k8s y usar como repo GitHub.

Sugerí como piezas a usar la webapp ACME de la práctica del módulo de CI-CD y desplegarla en un cluster en GKE, en el que también desplegaríamos Jenkins para el CI-CD, y Prometheus y Grafana para la monitorización.

Por circunstacias personales de cada componente del grupo no hemos podido trabajar en equipo. El proyecto está imcompleto y el frontend no muestra los items de los artículos almacenados en la BBDD. He entregado lo que he podido hacer hasta hoy.

### Instrucciones para crear el cluster de GKE 

1. En el directorio TF/ están los archivos .tf para levantar un cluster de GKE con 3 nodos configurados máquinas tipo "n1-standard-1". Para que Terraform pueda conectar con el proyecto de GCP y a la API de GKE:

    `gcloud auth application-default login`

Introducimos las credenciales de GCP. A continuación iniciamos terraform,

    terraform init

verificamos que la configuración y la ejecución sean correctas

    terraform plan

y levantamos el cluster

    terraform apply


2. 

'kubectl apply -f k8s/'


kubectl port-forward svc/argocd-server -n argocd 8080:443