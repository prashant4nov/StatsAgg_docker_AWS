# Starting docker from cmd

set PATH=%PATH%;"c:\Program Files (x86)\Git\bin"

boot2docker start

set DOCKER_HOST=tcp://192.168.59.103:2376

set DOCKER_CERT_PATH=C:\Users\ukumap5\.boot2docker\certs\boot2docker-vm

set DOCKER_TLS_VERIFY=1

# In console make StatsAgg_docker your working directory and run the following command(s)
docker build -t [image_name] . 

docker run -it -P --name [container_name] [image_name] catalina.sh run && tail -f /usr/local/tomcat/logs

docker port [container_name]


# Now open browser and type in http://[host_machine_ip]:[port # from the docker port command]

# AWS EC2 container 

# http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_GetStarted.html

# http://docs.aws.amazon.com/AmazonECS/latest/developerguide/get-set-up-for-amazon-ecs.html
