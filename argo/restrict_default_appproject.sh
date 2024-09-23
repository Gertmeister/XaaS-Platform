#!/bin/bash

echo "Modifying the AppProject..."

kubectl patch appproject default -n argocd --type='json' -p='[{"op":"replace", "path": "/spec/destinations","value":[]}]'
kubectl patch appproject default -n argocd --type='json' -p='[{"op":"replace", "path": "/spec/sourceRepos","value":[]}]'
kubectl patch appproject default -n argocd --type='json' -p='[{"op":"replace", "path": "/spec/clusterResourceWhitelist","value":[]}]'
