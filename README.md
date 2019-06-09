# kubernetes-datapipeline

```
docker build -t python_jobs:0.1 .
docker tag python_jobs:0.1 lordastinus/python_jobs:0.1
docker push lordastinus/python_jobs:0.1
kubectl apply -f kube/python_jobs.yaml
```