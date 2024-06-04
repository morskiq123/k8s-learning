# DOCUMENTATION: https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/

## LIVENESS PROBE ## 

# You can basically configure a container within the pod that will just send 
# a httpie / curl / wget command and send the status to an external system

# You can use a logging service, such as fluentd, which will take the logs from 
# the machine and send them to an external system, and monitor the health status
# in such a way

# If you want to do a tcp / udp port based test the kubernetes api provides such a
# test, so you don't have to use something else.

## STARTUP PROBE ##

# There is also a startup probe, which is used for apps that load slowly. 
# You can configure the probe to mark the machine as healthy after a certain
# condition has been met.

## READINESS PROBE ##

# You can mark a pod as "not ready" and this takes the pod out of the load balancer 