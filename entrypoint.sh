#!/bin/bash

gcloud container clusters get-credentials $1 --zone northamerica-northeast1-a --project $1-$2
pod=$(kubectl get pods --namespace $5 | grep $3 | cut -d " " -f1)
echo $pod
kubectl port-forward --address 0.0.0.0 $pod $4:$4 --namespace $5 &