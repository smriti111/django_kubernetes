# django_kubernetes
Django-app deployment in kubernetes
##To start the docker-container use command:
docker-compose up
The app starts at port number 8020
url:  http://localhost:8020/

##Use Kubernetes to deploy and run app
kubectl create -f ./kubernetes/deployments/deployment.yml
kubectl create -f ./kubernetes/service/services.yml

To check the status of pods:
kubectl get pod

To check the service
kuberctl get service

Running the app using an external ip address
minikube get service <name_of_the_service>
