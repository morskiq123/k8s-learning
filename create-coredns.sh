# DOCUMENTATION: https://kubernetes.io/docs/tasks/administer-cluster/coredns/
# CoreDNS is the default DNS component for k8s
# It runs as a couple of pods on the master node
# The CoreDNS ConfigMap is responsible for specifying the configuration
# for the CoreDNS pods.

# Basically, there is a CoreDNS Deployment, which is a k8s autoscaler.
# Deployments are a primitive object in k8s. They create a ReplicSet with a
# derivative name of the Deployment and they spin up the pods based on the 
# characteristics that they're given from the Deployment. 

# The ConfigMap is again a primitive object and it's a secret key - value pair holder
# The ConfigMap is mounted to the CoreDNS pods. Once the CoreDNS binary is installed
# on the CoreDNS pods, it reads the CoreDNS ConfigMap. If you want to make any updates,
# you should interact with the CoreDNS ConfigMap. If you want to apply to updates, then
# you run a *rollout* command on the Deployment object and it the updates will be applied

