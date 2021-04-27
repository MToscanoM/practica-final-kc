 apiVersion: apps/v1
 kind: Deployment
 metadata:
   name: backend 
   labels:
     app: backend
     version: ${VERSION}
 spec:
   selector:
     matchLabels:
       app: backend
   replicas: 1
   template:
     metadata:
       labels:
         app: backend
         version: ${VERSION}
     spec:
       containers:
       - name: backend
         image: ${DOCKER_REGISTRY}/backend:${VERSION}
         ports:
         - containerPort: 5000
