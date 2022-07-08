# Rust Server Installation
* [Warning](#warning)
* [General info](#general-info)
* [Instructions](#instructions)
* [Sources](#sources)
## Warning
This build still misses main features such as the ability to restart, shutdown, wipe and fullwipe the server. This features will be added over time, this is still a personal project in progress that I made to make server deployment easier with docker.
### Missing Main Features
* Restart server script
* Shutdown server script
* Wipe server script
* Fullwipe server script
* Mod compatibility

## General info
This project uses docker for fast and easy implementation of Rust game server using the SteamCMD docker image I've also created, you can find additional information in the following link: https://github.com/gonnaflick/SteamCMD

## Instructions
Instructions for installation are as follow:
1. Clone the repository 

```
$ git clone https://github.com/gonnaflick/Rust-Game-Server.git
```
2. Go to the rust directory
```
$ cd Rust-Game-Server/rust
```
3. Build the image
```
$ docker build -t rust-image .
```
4. Find the Docker image ID from the tag `rust-image`. You can find it with the following command
```
$ docker images
```
5. Run the docker image and create the container
```
$ docker run -it -p 28015:28015/tcp -p 28015:28015/udp -p 28016:28016/tcp -p 28082:28082/tcp --name <CONTAINER-NAME> <IMAGE-ID> /bin/bash
```
6. Modify the `config_server.txt` text file for server configuration
```
$ nano config_server.txt
```
7. Run the `install.sh` script to begin the rust server installation
```
$ ./install.sh
```
8. Once the installation is complete, all scripts to run and update the server are found in the `rustserver` directory, access it
```
$ cd rustserver
```
8. Run the `startserver.sh` script and wait for the server to start
```
$ ./startserver.sh
```
9. Finally, open Rust and press F1. Enter the following command
```
client.connect
```
After this you'll connect to the game server, yey!
You can also connect to the RCON Websocket in the following page https://facepunch.github.io/webrcon/#/home

### Make my server appear in the Rust Server Lists
1. Once you are sure the server was installed correctly, go to Steam.
2. In the options on the Steam header, select `View > Servers`.
3. Select `Favorites > Add Server`.
4. Enter your router IP and the port you selected in the common file `28015 by default`.
5. If you haven't turned on your server, it's not going to show any description. If this is the case then you need to enter to the server with `connect.client`, after that Steam it's going to recognize the server, and it will appear in the list.
6. Else, it's going to appear eaither in the `Community Tab` or `Modded Tab` depending if it's a vanilla server or not.
7. Profit, now you have your server listed.

## Sources
* https://hub.docker.com/repository/docker/gonnaflick/steamcmd
* https://github.com/gonnaflick/SteamCMD
* https://facepunch.github.io/webrcon/#/home
* https://developer.valvesoftware.com/wiki/Rust_Dedicated_Server#Linux_Scripts_Resources
* https://developer.valvesoftware.com/wiki/SteamCMD#Linux
* https://github.com/CM2Walki
