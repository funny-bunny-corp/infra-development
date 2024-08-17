#!/bin/bash
kubectl create namespace presto
helm repo add presto https://prestodb.github.io/presto-helm-charts
helm install my-presto presto/presto -n presto --set mode=single

