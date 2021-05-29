# django_kubernetes
## To run the web app locally
<p>First install the dependencies</p>
```python
pip install -m requirements.txt
```
<p> To start the django app locally </p>
```python
python manage.py runserver
```
<p>Go to url</p>
 [http://localhost:8000]( http://localhost:8000)
  
Django-app deployment in kubernetes
## To start the docker-container use command>
```docker
docker-compose up
```
<p>The app starts at port number 8020</p>
[http://localhost:8020/]( http://localhost:8020)

## Use Kubernetes to deploy and run app
```kubernetes
kubectl create -f ./kubernetes/deployments/deployment.yml
kubectl create -f ./kubernetes/service/services.yml
```

## To check the status of pods:
```kubernetes
kubectl get pod
```
## To check the service
```kubernetes
kuberctl get service
```
## Running the app using an external ip address
```kubernetes
minikube get service django-rest-service
```
