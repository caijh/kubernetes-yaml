#!/bash/sh

kubectl exec -it redis-0 -n redis-cluster -- redis-cli --cluster create --cluster-replicas 1 $(kubectl get pods -l app=redis -n redis-cluster -o jsonpath='{range.items[*]}{.status.podIP}:6379 ')
