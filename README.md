Build Image

sudo docker build --no-cache --tag=nest-example .

---------------------------------------
Run Docker Image

sudo docker run -p 3000:3000 nest-example
-------------------------------------
Push Docker Image

dockerpath="tuanna2704/nest-udacity:v1.0.0"
sudo docker login
sudo docker tag nest-example $dockerpath
sudo docker push $dockerpath


Github repository: https://@github.com/tuanna2704/nest-udacity.git
Docker images repository: https://hub.docker.com/repository/docker/tuanna2704/nest-udacity/general

--------------------------------------------------
Create cluster in EKS:
eksctl create cluster -f cloudfomations/eks-cluster.yaml

Delete Cluster EKS:
eksctl delete cluster--name=capstone-cluster