#!/bin/bash
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/common/app-config.yml
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/common/app-init.yml
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/common/app-mysql.yml

kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/mysql/persistent-volume-claim.yml
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/mysql/statefulset.yml
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/mysql/service.yml

kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/redis/persistent-volume-claim.yml
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/redis/statefulset.yml
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/redis/service.yml

kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/api/deployment.yml
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/api/service.yml

kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/nginx/deployment.yml
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/nginx/service.yml

kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/frontend/deployment.yml
kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/frontend/service.yml

kubectl --kubeconfig=/home/.kube/config apply -f ./kubernetes/ingress/ingress.yaml