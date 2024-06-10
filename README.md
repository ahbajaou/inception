# inception

### **The Docker Engine**

First, let us look take a look at Docker Engine and its components so we have a basic idea of how the system works. Docker Engine allows you to develop, assemble, ship, and run applications using the following components:

- **Docker Daemon**: A persistent background process that manages Docker images, containers, networks, and storage volumes. The Docker daemon constantly listens for Docker API requests and processes them.
- **Docker Engine REST API**: An API used by applications to interact with the Docker daemon; it can be accessed by an HTTP client.
- **Docker CLI**: A command line interface client for interacting with the Docker daemon. It greatly simplifies how you manage container instances and is one of the key reasons why developers love using Docker.

### **Docker Objects**

Various objects are used in the assembling of your application. The main requisite Docker objects are:

### **Images**

Images are a read-only binary template used to build containers. Images also contain metadata that describe the container’s capabilities and needs. Images are used to store and ship applications. An image can be used on its own to build a container or customized to add additional elements to extend the current configuration. Container images can be shared across teams within an enterprise using a private container registry, or shared with the world using a public registry like [Docker Hub](https://www.aquasec.com/cloud-native-academy/docker-container/using-docker-hub-responsibly-4-security-best-practices/). Images are a core part of the Docker experience as they enable collaboration between developers in a way that was not possible before.

### **Containers**

Containers are encapsulated environments in which you run applications. The container is defined by the image and any additional configuration options provided on starting the container, including and not limited to the network connections and storage options. Containers only have access to resources that are defined in the image, unless additional access is defined when building the image into a container. You can also create a new image based on the current state of a container. Since containers are much smaller than VMs, they can be spun up in a matter of seconds, and result in much better server density.

### **Networking**

Docker implements [networking](https://www.aquasec.com/cloud-native-academy/docker-container/docker-networking/) in an application-driven manner and provides various options while maintaining enough abstraction for application developers. There are basically two types of networks available – the default Docker network and user-defined networks. By default, you get three different networks on the installation of Docker – none, bridge, and host. The none and host networks are part of the network stack in Docker. The bridge network automatically creates a gateway and IP subnet and all containers that belong to this network can talk to each other via IP addressing. This network is not commonly used as it does not scale well and has constraints in terms of network usability and service discovery.

The other type of networks is user-defined networks. Administrators can configure multiple user-defined networks. There are three types:

- **Bridge network**: Similar to the default bridge network, a user-defined Bridge network differs in that there is no need for port forwarding for containers within the network to communicate with each other. The other difference is that it has full support for automatic network discovery.
- **Overlay network**: An Overlay network is used when you need containers on separate hosts to be able to communicate with each other, as in the case of a distributed network. However, a caveat is that swarm mode must be enabled for a cluster of Docker engines, known as a swarm, to be able to join the same group.
- **Macvlan network**: When using Bridge and Overlay networks a bridge resides between the container and the host. A Macvlan network removes this bridge, providing the benefit of exposing container resources to external networks without dealing with port forwarding. This is realized by using MAC addresses instead of IP addresses.

### 

# Docker Volumes

There are three main use cases for Docker Volumes as follows:

- To keep data around when a container is removed
- To share data between the host filesystem and the Docker container
- To share data with other Docker containers

By Docker Volumes, we are essentially going to look at how to manage data within the docker containers

- **Persistent Data:** A data or information that is infrequently accessed and not likely to be modified. Volumes permit you to store and keep up with information separate from the holder, guaranteeing information trustworthiness and constancy across containers lifecycles.
- **Share Data Between Containers**: Volumes can be mounted into multiple containers, enabling data sharing and collaboration between different parts of an application or between different applications.
- **Manage Data Backup And Migration:** Volumes provide a convenient way to back up and migrate data between environments, facilitating application deployment and disaster recovery processes.
- Overall, Docker volumes play a vital role in Docker-based applications by providing a flexible and efficient mechanism for handling persistent data storage and management.

# Types Of Docker Volumes

There are three types of volumes in docker:

1) Named volumes

2) Host bind mounts

3) Anonymous volumes

![types-of-mounts-volume.webp](https://prod-files-secure.s3.us-west-2.amazonaws.com/f7385593-b404-4b70-8879-8f5c29bd40fc/9d8052a2-1640-4cd2-8514-aeab36acdf70/types-of-mounts-volume.webp)


# What is Docker Compose

Docker Compose will execute a YAML-based multi-container application. The YAML file consists of all configurations needed to deploy containers Docker Compose, which is integrated with Docker Swarm, and provides directions for building and deploying containers. With Docker Compose, each container is constructed to run on a single host.

# Why Docker Compose?

As discussed earlier,  a real-world application has a separate container for each of its services. And we know that each container needs to have a Dockerfile. It means we will have to write maybe hundreds of docker files and then manage everything about the containers individually, That’s cumbersome.

Hence we use docker-compose, which is a tool that helps in the definition and running of multi-container applications. With the help of Docker Compose you can start and stop the services by using its YAML file.

Docker-compose allows us to start and stop all of the services with just a few simple commands and a single YAML file for each configuration.

In contrast to utilizing a prebuilt image from Docker Hub, which you may configure with the docker-compose.yaml file, if you are using a custom image, you will need to declare its configurations in a separate Dockerfile.

These are the features that docker-compose support:

- All the services are isolated running on a single host.
- Containers are recreated only when there is some change.
- The volume data is not reset when creating new containers, volumes are preserved.
- Movement of variables and composition within environments.
- It creates a virtual network for easy interaction within the environments.