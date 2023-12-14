#!/bin/bash

# flux create source helm ingress-nginx --url https://kubernetes.github.io/ingress-nginx --namespace main --export

# flux create helmrelease ingress-nginx --chart ingress-nginx \
#   --source HelmRepository/ingress-nginx \
#   --chart-version 4.7.2 \
#   --namespace main \
#   --export