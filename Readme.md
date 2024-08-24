# vscode-tunnel
## Introduction
The project is created to allow access of container using vscode - tunnel remotly thorugh browser on any device. The vscode-tunnel is a secure and safe way to share your server code and allow developers work remotely on the server from any device and location over the internet.
As it is a docker container you can conditionally mount the project on this container as volumes without worring about the access right or security issues. This tunnel application is accessible through vscode and hence you can use your own editor with all your configurations and extensions installed. On the other side if you do not use vscode, you can go with http://vscode.dev i.e. web version of vscode without any installation and Login with your credentials.
## Features
- Lightweight
- Easy Setup
- Almost Zero Configuration
- Secure
## Running with Docker CLI
You can run command below to start the tunnel: 

``` docker run -d -v /path/to/sourcecode:/home/node/workspace --name vscode-tunnel-server optiwariindia/vscode-tunnel ```

This will start the service. To connect the service with your github account open logs by running following command: 

``` docker logs vscode-tunnel-server ```

This will show you some logs like :
```
*
* Visual Studio Code Server
*
* By using the software, you agree to
* the Visual Studio Code Server License Terms (https://aka.ms/vscode-server-license) and
* the Microsoft Privacy Statement (https://privacy.microsoft.com/en-US/privacystatement).
*
[2024-08-24 11:52:18] info Using GitHub for authentication, run `code tunnel user login --provider <provider>` option to change this.
To grant access to the server, please log into https://github.com/login/device and use code AD4B-888F
```
Follow the instruction to connect your github account with thsi service. 

## How to use
* Open https://vscode.dev
* Go to "Connect to tunnel" Button
* Select your connected Github Account
* You can see tunnels connected to your account. Select the tunnel you want to connect to i.e. "vscode-tunnel-server" for this case.
* Now go to "open folder" button
* You will be shown server files from the docker container. Select workspace folder from there and start working with it.
* You can also execute commands to the tunnel server by integrated terminal.

## Installation using docker compose
You can create your dockercompose.yml file like this:

```
services:
    vscode-tunnel-server:
        image: optiwariindia/vscode-tunnel
        container_name: vscode-tunnel-server
        hostname: vacode-tunnel-server # You can keep hostname as per your project or developer's name
        volumes:
            - /path/to/project/directory:/home/ndoe/workspace/projectname
        restart: unless-stopped # or always as per your requirements
```

You can now run this docker compose by following command:

```docker compose up -d ```

## Feedback and Support
Comment to this repository for any feedback or support. Alternatively you can raise an issue in the repository.

