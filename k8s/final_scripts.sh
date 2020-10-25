
eksctl delete cluster --region=ap-south-1 --name=capstone

eksctl create cluster -f cluster.yaml

#using a new name as capstone was already created
aws eks --region ap-south-1 update-kubeconfig --name capstonecharu

kubectl get svc

kubectl apply -f deployment.yaml


kubectl get deployments


kubectl apply -f service.yaml


# kubectl get services

ubuntu@ip-172-31-25-124:~$ kubectl get services
NAME              TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)          AGE
backend-service   NodePort    10.100.173.42   <none>        8080:31479/TCP   24m
kubernetes        ClusterIP   10.100.0.1      <none>        443/TCP          38m


# kubectl get pods -o wide

ubuntu@ip-172-31-25-124:~$ kubectl get pods -o wide
NAME                           READY   STATUS    RESTARTS   AGE   IP               NODE                                            NOMINATED NODE   READINESS GATES
server-demo-5cfbcdb85d-8clp4   1/1     Running   0          11m   192.168.30.237   ip-192-168-0-208.ap-south-1.compute.internal    <none>           <none>
server-demo-5cfbcdb85d-nrx69   1/1     Running   0          11m   192.168.236.13   ip-192-168-208-13.ap-south-1.compute.internal   <none>           <none>




# kubectl get nodes -o wide

ubuntu@ip-172-31-25-124:~$ kubectl get nodes -o wide
NAME                                            STATUS   ROLES    AGE   VERSION               INTERNAL-IP      EXTERNAL-IP      OS-IMAGE         KERNEL-VERSION                  CONTAINER-RUNTIME
ip-192-168-0-208.ap-south-1.compute.internal    Ready    <none>   31m   v1.17.11-eks-cfdc40   192.168.0.208    13.232.114.215   Amazon Linux 2   4.14.198-152.320.amzn2.x86_64   docker://19.3.6
ip-192-168-122-58.ap-south-1.compute.internal   Ready    <none>   31m   v1.17.11-eks-cfdc40   192.168.122.58   13.126.124.33    Amazon Linux 2   4.14.198-152.320.amzn2.x86_64   docker://19.3.6
ip-192-168-208-13.ap-south-1.compute.internal   Ready    <none>   30m   v1.17.11-eks-cfdc40   192.168.208.13   <none>           Amazon Linux 2   4.14.198-152.320.amzn2.x86_64   docker://19.3.6


# Delete cluster
eksctl delete cluster --region=ap-south-1 --name=capstonecharu




#port 31479







