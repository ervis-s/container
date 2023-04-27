# Container of cats docker image

Ideally run this on an EC2 instance within AWS (running amazon linux)
Needs internet access for image upload to dockerhub
You will need a dockerhub account
To test the container ... tcp/80 will need to be open on the instance security group

## Download, Install and Configure docker and tools

sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user

## Use Git to get the lesson files

sudo yum install git
git clone https://github.com/ervis-s/container.git

## Build the docker image

docker build -t toccontainer .
docker images --filter reference=toccontainer

## Test the image by running a container
docker run -t -i -p 80:80 toccontainer

## Upload image to docker hub

docker login --username YOUR_USER
docker images
docker tag IMAGEID YOUR_USER/toccontainer
docker push YOUR_USER/toccontainer
