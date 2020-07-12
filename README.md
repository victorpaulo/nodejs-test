# test

```bash
ssh-keygen -t rsa -N "" -f mykey

ssh-keyscan github.com > /tmp/known_hosts
kubectl create secret generic git-creds --from-file=ssh=mykey --from-file=known_hosts=/tmp/known_hosts
```   
