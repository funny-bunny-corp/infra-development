#!/bin/bash
kubectl create namespace database
helm install postgresql oci://registry-1.docker.io/bitnamicharts/postgresql --set global.postgresql.auth.postgresPassword=postgres --set global.postgresql.auth.username=postgres --namespace database
