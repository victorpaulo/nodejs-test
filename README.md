# test

```bash
ssh-keygen -t rsa -N "" -f mykey

#Import the mykey.pub in the GitHub or Bitbucket via web console preferences option.

#Github
ssh-keyscan github.com > /tmp/known_hosts

#Bitbucket
ssh-keyscan bitbucket.org > /tmp/known_hosts

kubectl create secret generic git-creds --from-file=ssh=mykey --from-file=known_hosts=/tmp/known_hosts
```   
