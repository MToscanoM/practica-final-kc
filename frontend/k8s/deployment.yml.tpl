 apiVersion: apps/v1
 kind: Deployment
 metadata:
   name: frontend 
   labels:
     app: frontend
     version: ${VERSION}
 spec:
   selector:
     matchLabels:
       app: frontend
   replicas: 1
   template:
     metadata:
       labels:
         app: frontend
         version: ${VERSION}
     spec:
       containers:
       - name: frontend
         image: ${DOCKER_REGISTRY}/frontend:${VERSION}
         ports:
         - containerPort: 5000
