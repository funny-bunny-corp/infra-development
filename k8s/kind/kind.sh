#!/bin/bash
kind create cluster --name paymentic --config clusterconfig.yaml
kubectl cluster-info --context kind-paymentic
