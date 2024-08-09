# labs-docker-devdocker 

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker pull ubuntu
Using default tag: latest
latest: Pulling from library/ubuntu
9c704ecd0c69: Pull complete 
Digest: sha256:2e863c44b718727c860746568e1d54afd13b2fa71b160f5cd9058fc436217b30
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest

--------------------------------------------------------------------------------------------------------------


@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker pull python:bookworm 
bookworm: Pulling from library/python
ca4e5d672725: Pull complete 
30b93c12a9c9: Pull complete 
10d643a5fa82: Pull complete 
d6dc1019d793: Pull complete 
a620f0f174f1: Pull complete 
ad8837c5b819: Pull complete 
d22f40fe2848: Pull complete 
25faddfd0b6b: Pull complete 
Digest: sha256:08ac6c57f123d1ca5dd6c786cd7ceb4251733f98efe1697042e5d28b069916e7
Status: Downloaded newer image for python:bookworm
docker.io/library/python:bookworm

--------------------------------------------------------------------------------------------------------------


@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker run -it ubuntu bash
root@a131875d54a0:/# ls
bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var

--------------------------------------------------------------------------------------------------------------

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker run -d -p 8080:80 httpd
a2c67429bb19159accd742a50fc46801dc072279e3b41c31c068f84458ae38cc
@federico722 ➜ /workspaces/labs-docker-dev (main) $ 

--------------------------------------------------------------------------------------------------------------

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS                        PORTS                                   NAMES
a2c67429bb19   httpd     "httpd-foreground"       5 minutes ago   Exited (0) 3 minutes ago                                              peaceful_jepsen
dcace6fece64   httpd     "httpd-foreground"       28 hours ago    Exited (255) 12 minutes ago   0.0.0.0:8080->80/tcp, :::8080->80/tcp   adoring_ptolemy
b95383c0f170   httpd     "httpd-foreground"       28 hours ago    Created                                                               awesome_chaplygin
cb62f5841e88   httpd     "httpd-foreground"       28 hours ago    Created                                                               recursing_kalam
a131875d54a0   ubuntu    "bash"                   28 hours ago    Exited (0) 28 hours ago                                               youthful_khayyam
5effa1c857c0   nginx     "/docker-entrypoint.…"   28 hours ago    Exited (0) 28 hours ago                                               jolly_noether
@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker rm a131875d54a0
a131875d54a0
@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED         STATUS                        PORTS                                   NAMES
a2c67429bb19   httpd     "httpd-foreground"       8 minutes ago   Exited (0) 5 minutes ago                                              peaceful_jepsen
dcace6fece64   httpd     "httpd-foreground"       28 hours ago    Exited (255) 14 minutes ago   0.0.0.0:8080->80/tcp, :::8080->80/tcp   adoring_ptolemy
b95383c0f170   httpd     "httpd-foreground"       28 hours ago    Created                                                               awesome_chaplygin
cb62f5841e88   httpd     "httpd-foreground"       28 hours ago    Created                                                               recursing_kalam
5effa1c857c0   nginx     "/docker-entrypoint.…"   28 hours ago    Exited (0) 28 hours ago                                               jolly_noether
@federico722 ➜ /workspaces/labs-docker-dev (main) $ 

--------------------------------------------------------------------------------------------------------------

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker container prune
WARNING! This will remove all stopped containers.
Are you sure you want to continue? [y/N] y
Deleted Containers:
a2c67429bb19159accd742a50fc46801dc072279e3b41c31c068f84458ae38cc
dcace6fece64477c2042b044fa64f085409bf23d84a23c1edf408a7a769d294a
b95383c0f1703b8694dd6847a9b4e5759d75383e634a14d28b1c24325eb1cc96
cb62f5841e88ba4cc994ed9a05c5d6167a67aab80a0931d8769b800cca69a7a0
5effa1c857c01efc01337135f2f0c8dee766eb485c329375a23c03b68b18774c

Total reclaimed space: 1.095kB
@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
@federico722 ➜ /workspaces/labs-docker-dev (main) $ 

--------------------------------------------------------------------------------------------------------------

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker build -t ubuntu-updated:latest .
[+] Building 9.2s (6/6) FINISHED                                                                                                                                       docker:default
 => [internal] load build definition from dockerfile                                                                                                                             0.2s
 => => transferring dockerfile: 97B                                                                                                                                              0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest                                                                                                                 0.0s
 => [internal] load .dockerignore                                                                                                                                                0.1s
 => => transferring context: 2B                                                                                                                                                  0.0s
 => [1/2] FROM docker.io/library/ubuntu:latest                                                                                                                                   0.1s
 => [2/2] RUN apt-get update && apt-get upgrade -y                                                                                                                               7.1s
 => exporting to image                                                                                                                                                           1.2s 
 => => exporting layers                                                                                                                                                          1.1s 
 => => writing image sha256:7e1c24ace2c18e86bb26a99c3e73b938fd855dfe01d5af8baaba244ddd7a81a6                                                                                     0.0s 
 => => naming to docker.io/library/ubuntu-updated:latest  

--------------------------------------------------------------------------------------------------------------

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker build -t nginx_test . 
[+] Building 0.6s (6/6) FINISHED                                                                                                                                       docker:default
 => [internal] load build definition from dockerfile                                                                                                                             0.0s
 => => transferring dockerfile: 131B                                                                                                                                             0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest                                                                                                                 0.0s
 => [internal] load .dockerignore                                                                                                                                                0.0s
 => => transferring context: 2B                                                                                                                                                  0.0s
 => [1/2] FROM docker.io/library/ubuntu:latest                                                                                                                                   0.0s
 => CACHED [2/2] RUN apt-get update && apt-get upgrade -y                                                                                                                        0.0s
 => exporting to image                                                                                                                                                           0.1s
 => => exporting layers                                                                                                                                                          0.0s
 => => writing image sha256:a83b00700107915b58560a87fd65e0a7d0eff688b477293c5d75baa8dabcf078                                                                                     0.0s
 => => naming to docker.io/library/nginx_test     

--------------------------------------------------------------------------------------------------------------

 
 @federico722 ➜ /workspaces/labs-docker-dev (main) $ docker build -t nginx_test:latest .
[+] Building 0.5s (6/6) FINISHED                                                                                                                                       docker:default
 => [internal] load build definition from dockerfile                                                                                                                             0.1s
 => => transferring dockerfile: 131B                                                                                                                                             0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest                                                                                                                 0.0s
 => [internal] load .dockerignore                                                                                                                                                0.0s
 => => transferring context: 2B                                                                                                                                                  0.0s
 => [1/2] FROM docker.io/library/ubuntu:latest                                                                                                                                   0.0s
 => CACHED [2/2] RUN apt-get update && apt-get upgrade -y                                                                                                                        0.0s
 => exporting to image                                                                                                                                                           0.1s
 => => exporting layers                                                                                                                                                          0.0s
 => => writing image sha256:a83b00700107915b58560a87fd65e0a7d0eff688b477293c5d75baa8dabcf078                                                                                     0.0s
 => => naming to docker.io/library/nginx_test:latest   


--------------------------------------------------------------------------------------------------------------


@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker run -d -p 80:80 nginx_test:latest                                                                                          
d711744e1e87beed6f3cc3fbe4814b0c8247074e142a4ea7de65ebe1b014849d                                                                                                                      
@federico722 ➜ /workspaces/labs-docker-dev (main) $ 

--------------------------------------------------------------------------------------------------------------

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker build -t nginx_test .
[+] Building 0.5s (6/6) FINISHED                                                                                                                                       docker:default
 => [internal] load build definition from dockerfile                                                                                                                             0.0s
 => => transferring dockerfile: 147B                                                                                                                                             0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest                                                                                                                 0.0s
 => [internal] load .dockerignore                                                                                                                                                0.0s
 => => transferring context: 2B                                                                                                                                                  0.0s
 => [1/2] FROM docker.io/library/ubuntu:latest                                                                                                                                   0.0s
 => CACHED [2/2] RUN apt-get update && apt-get upgrade -y nginx                                                                                                                  0.0s
 => exporting to image                                                                                                                                                           0.1s
 => => exporting layers                                                                                                                                                          0.0s
 => => writing image sha256:c7064e32217b7140bb7119f4604d4482eb06f4e532e386919f09089e0627b799                                                                                     0.0s
 => => naming to docker.io/library/nginx_test     

--------------------------------------------------------------------------------------------------------------


 @federico722 ➜ /workspaces/labs-docker-dev (main) $ docker build -t  my_nginx_index .
[+] Building 2.6s (7/7) FINISHED                                                                                                                                       docker:default
 => [internal] load build definition from dockerfile                                                                                                                             0.0s
 => => transferring dockerfile: 216B                                                                                                                                             0.0s
 => [internal] load metadata for docker.io/library/nginx:latest                                                                                                                  0.0s
 => [internal] load .dockerignore                                                                                                                                                0.1s
 => => transferring context: 2B                                                                                                                                                  0.0s
 => [internal] load build context                                                                                                                                                0.4s
 => => transferring context: 342B                                                                                                                                                0.0s
 => [1/2] FROM docker.io/library/nginx:latest                                                                                                                                    0.8s
 => [2/2] COPY index.html /usr/share/nginx/html/im                                                                                                                               0.2s
 => exporting to image                                                                                                                                                           1.1s
 => => exporting layers                                                                                                                                                          1.0s
 => => writing image sha256:1f57d50a8e6c7b028b9225fc1919938fac90aa3334429c8ef8fe2bd9cb21e2ee                                                                                     0.0s
 => => naming to docker.io/library/my_nginx_index         

--------------------------------------------------------------------------------------------------------------
