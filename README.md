# Proyecto Final BootCamp DevOps III
# ACME SHOP by DevUpss "team" :)

**Descripción del proyecto**

Decidimos usar GCP, desplegar una app en k8s y usar como repo GitHub.

Sugerí como piezas a usar la webapp ACME de la práctica del módulo de CI-CD y desplegarla en un cluster en GKE, en el que también desplegaríamos Jenkins para el CI-CD, y Prometheus y Grafana para la monitorización.

Por circunstacias personales de cada componente del grupo no hemos podido trabajar en equipo. El proyecto está imcompleto y el frontend no muestra los items de los artículos almacenados en la BBDD. He entregado lo que he podido hacer hasta hoy.

### Crear el cluster de GKE con Terraform
1. Gcloud SDK instalado en local y configurado con el proyecto de GCP.
2. En el directorio TF/ están los archivos .tf para levantar un cluster de GKE con 3 nodos configurados con máquinas tipo "n1-standard-1". Para que Terraform pueda conectar con el proyecto de GCP y a la API de GKE:

    `gcloud auth application-default login`

    Introducimos las credenciales de GCP. A continuación iniciamos terraform,

    `terraform init`

    verificamos que la configuración y la ejecución sean correctas

    `terraform plan`

    y levantamos el cluster

    `terraform apply`

### Crear y publicar imágenes de docker en Cloud Build

1. Creamos un trigger en Cloud Build para que, al hacer push en la rama develop del repositorio de GitHub, ejecuta el archivo *cloudbuild.yaml* para crear las respectivas imágenes de frontend y backend y las almacene en Container registry.

### Desplegar manifests de k8s en cluster

1. El archivo *cloudbuild.yaml* despliega los manifests después de crear y almacenar las imágenes pero también se puede desplegar manualmente desde local:

    `kubectl apply -f k8s/`

Para acceder a la web ACME SHOP:

practica.keepcoding.marianotoscano.com

Por último he instalado Argo CD para usar otra alternativa para la monitorización y despliegue en kubernetes. Aquí la guía de instalación:

https://argoproj.github.io/argo-cd/getting_started/

Y haciendo portforwarding conectamos a la UI para usarlo:

`kubectl port-forward svc/argocd-server -n argocd 8080:443`

Pues hasta aquí puedo escribir. :)