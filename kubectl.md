# Kubectl commands

kubectl get pods --all-namespaces

kubectl get pods -n example

kubectl describe pod/example-748595d78c-fc8kr -n example

kubectl exec -it pod/example-748595d78c-fc8kr -c example /bin/sh -n example


# Restart PID 1 process inside container

kubectl exec -it pod/example-f95cbb9b5-jtzhh -c example -n example -- /bin/sh -c "kill 1"
