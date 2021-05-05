 apiVersion: apps/v1
 kind: Deployment
 metadata:
   name: frontend 
   labels:
     app: frontend
     version: VERSION
 spec:
   selector:
     matchLabels:
       app: frontend
   replicas: 1
   template:
     metadata:
       labels:
         app: frontend
         version: VERSION
     spec:
       containers:
       - name: frontend
         image: gcr.io/marianotests/acme-docker-repo/acme-frontend:VERSION
         ports:
         - containerPort: 5000
---
kind: Service
apiVersion: v1
metadata:
  name: frontend
  labels:
    app: frontend
spec:
  type: NodePort
  ports:
  - port: 3000
    targetPort: 3000
  selector:
    app: frontend