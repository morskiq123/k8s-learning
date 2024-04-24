# DOCUMENTAITON https://kubernetes.io/docs/concepts/services-networking/service/

# A service is a method of exposing a network application
# that is running as one or more pods. It is used well
# with deployments, since deployments are basically scale groups, 
# meaning that there might be N pods at any given time. Keep in mind,
# pods are ephemeral, they're not something to be relied upon. 
# An example would be backend and frontend pods, the frotend
# pods being, for example, loadbalancers. If backend pods are
# ephemeral and change IPs constantly, then it would be a shitshow
# with bad networking. Services solve this issue.

# Services do not facilitate any changes on the pods themselves, so
# this means that there will be no disruption of a deployment when a 
# service is introducted into the manifest. The pods will continue operating
# as normal. 

    apiVersion: v1
    kind: Pod
    metadata:
    name: nginx
    spec:
    containers:
    - name: nginx
        image: nginx:1.14.2
        ports:
        - containerPort: 80
---
apiVersion: v1
kind: Service
metadata:
    name: nginx-service
spec:
    ports:
        -   protocol: TCP
            port: 80
            targetPort: 80