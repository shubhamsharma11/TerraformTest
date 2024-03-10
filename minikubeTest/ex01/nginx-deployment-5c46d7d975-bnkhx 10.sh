nginx-deployment-5c46d7d975-bnkhx   10.244.0.7

"--cluster-cidr=10.244.0.0/16"

"--service-cluster-ip-range=10.96.0.0/12",

NAME     EXTERNAL-IP
<none>   192.168.49.2

get pod ip
kubectl get pod nginx-deployment-5c46d7d975-b4scn -n ns01 -o custom-columns=NAME:metadata.name,IP:status.podIP
 
get cluster ip cidr
kubectl cluster-info dump | grep -m 1 cluster-cidr

get service ip
kubectl cluster-info dump | grep -m 1 service-cluster-ip-range

get Node ip
kubectl get nodes -o custom-columns=NAME:.metada.name,EXTERN
AL-IP:.status.addresses[0].address





PS C:\Users\VMUser\Documents\minikubeTest> kubectl get svc -n ns01
NAME            TYPE       CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
nginx-service   NodePort   10.98.202.64   <none>        92:30001/TCP   45h




PS C:\Users\VMUser\Documents\minikubeTest> kubectl get svc -n ns01
NAME            TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
nginx-service   ClusterIP   10.103.50.106   <none>        92/TCP    15s