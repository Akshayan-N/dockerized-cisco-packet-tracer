# Dockerized Cisco Packet-Tracer

Hey,  I am Kali Linux user and I started to study networking so I had to use Cisco packet tracer and tried to downloading the deb file and installing it but could not install install due to dependencies issues 

I tried downloading the dependencies from internet but could get the deb packages I tried looking for docker images and found few but it was not good. :(

So, I build a Cisco Packet-Tracer Docker Image for all the Linux user , Who are facing the same problem as me : )

You can use it by pulling it from the Docker Hub. for further information please visit  [DockerHub Link](https://hub.docker.com/r/akshayanhub/cisco-packet-tracer)

OR 

You can build it yourself using this command  :

```bash 
git clone https://github.com/Akshayan-N/dockerized-cisco-packet-tracer.git
cd dockerized-cisco-packet-tracer
sudo docker build cisco-packet-tracer . 
```

> Note : If your are new to docker, please refer the [DockerHub Link](https://hub.docker.com/r/akshayanhub/cisco-packet-tracer)  for step by step guide 