```
docker build -t springboot-single-endpoint-eks:1.5 .
docker images | grep springboot-single-endpoint-eks
docker tag springboot-single-endpoint-eks:1.5 harsen/springboot-single-endpoint-eks:1.5
docker push harsen/springboot-single-endpoint-eks:1.5
 kubectl apply -f deployment.yaml
 kubectl apply -f service.yaml
 kubectl get pods
minikube service kubectl describe svc springboot-app-eks-v1

http://127.0.0.1:51331/message
