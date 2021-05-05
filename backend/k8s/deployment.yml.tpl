 apiVersion: apps/v1
 kind: Deployment
 metadata:
   name: backend 
   labels:
     app: backend
     version: VERSION
 spec:
   selector:
     matchLabels:
       app: backend
   replicas: 1
   template:
     metadata:
       labels:
         app: backend
         version: VERSION
     spec:
       containers:
       - name: backend
         image: gcr.io/marianotests/acme-docker-repo/acme-backend:VERSION
         ports:
         - containerPort: 5000
---
kind: Service
apiVersion: v1
metadata:
  name: backend
  labels:
    app: backend
spec:
  type: NodePort
  ports:
  - port: 5000
    targetPort: 5000
  selector:
    app: backend