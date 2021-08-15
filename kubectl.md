# Copy file
## if pod contains more than 1 container, use -c to specify which container
## otherwise it will use default container automatically

kubectl cp my-file namespace/my-pod:/path/file -c my-container-name

### by default it will copy from current workdir
### get current workdir from origin pod

kubectl exec -it mypod -c my-container-name -- pwd

### copy from relative path
kubectl cp namespace/my-pod:path/file -c my-container-name /path/file

### if want to copy from absolute path, have to change path first
### '-C /' means change to root folder, then path/file means /path/file

kubectl exec mypod -c my-container-name -- tar cf - -C / path/file | tar xf - -C ./subfolder

or 

kubectl exec mypod -c my-container-name -- tar cf - -C / path/file | tar xf - -C /folder/subfolder

# Kubectl commands

kubectl get pods --all-namespaces

kubectl get pods -n example

kubectl describe pod/example-748595d78c-fc8kr -n example

kubectl exec -it pod/example-748595d78c-fc8kr -c example /bin/sh -n example


# Restart PID 1 process inside container

kubectl exec -it pod/example-f95cbb9b5-jtzhh -c example -n example -- /bin/sh -c "kill 1"
