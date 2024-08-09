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

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker build -t copy_file:latest .
[+] Building 1.3s (8/8) FINISHED                                                                                                                                       docker:default
 => [internal] load build definition from dockerfile                                                                                                                             0.1s
 => => transferring dockerfile: 269B                                                                                                                                             0.0s
 => [internal] load metadata for docker.io/library/ubuntu:latest                                                                                                                 0.0s
 => [internal] load .dockerignore                                                                                                                                                0.0s
 => => transferring context: 2B                                                                                                                                                  0.0s
 => [1/3] FROM docker.io/library/ubuntu:latest                                                                                                                                   0.0s
 => [internal] load build context                                                                                                                                                0.0s
 => => transferring context: 127B                                                                                                                                                0.0s
 => CACHED [2/3] WORKDIR /app                                                                                                                                                    0.0s
 => [3/3] COPY ejemplo.txt .                                                                                                                                                     0.2s
 => exporting to image                                                                                                                                                           0.5s
 => => exporting layers                                                                                                                                                          0.4s
 => => writing image sha256:1b33506223d394e30daaa679283eeecfc2c3b2f451be578f8e9dfc3f2104ac0e                                                                                     0.0s
 => => naming to docker.io/library/copy_file:latest                                                                                                                              0.0s
@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker run -it copy_file bash
root@774e3c858203:/app# ls
ejemplo.txt
root@774e3c858203:/app# 

--------------------------------------------------------------------------------------------------------------


@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker build -t ejemplo_script-python .
[+] Building 8.2s (9/9) FINISHED                                                                                                                                       docker:default
 => [internal] load build definition from dockerfile                                                                                                                             0.1s
 => => transferring dockerfile: 349B                                                                                                                                             0.0s
 => [internal] load metadata for docker.io/library/python:3.9                                                                                                                    0.6s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                                    0.0s
 => [internal] load .dockerignore                                                                                                                                                0.0s
 => => transferring context: 2B                                                                                                                                                  0.0s
 => [1/3] FROM docker.io/library/python:3.9@sha256:65438c2e26dbf9f5db4b5553e332747fa20722c1b7c7ccc6f8480396ff4186db                                                              3.9s
 => => resolve docker.io/library/python:3.9@sha256:65438c2e26dbf9f5db4b5553e332747fa20722c1b7c7ccc6f8480396ff4186db                                                              0.1s
 => => sha256:83a59ab1a4811d0d1b135849e5071eff4d461a56def17589bd1b2f093aeeb5a1 7.31kB / 7.31kB                                                                                   0.0s
 => => sha256:65438c2e26dbf9f5db4b5553e332747fa20722c1b7c7ccc6f8480396ff4186db 10.35kB / 10.35kB                                                                                 0.0s
 => => sha256:9972540d93856f9ca3eff2cf803ffb472bf1687cd1a91365cc803a539281900b 2.52kB / 2.52kB                                                                                   0.0s
 => => sha256:c7d45ab0573c09f3315112fe3e8d273f4b54dab9e8c3f315810afb743e794a28 6.16MB / 6.16MB                                                                                   0.3s
 => => sha256:564d1c451ea70670b349d1250f5c0577416f873f6ee7b5cb33dafeb21c2c40a4 15.82MB / 15.82MB                                                                                 0.5s
 => => sha256:ddfb50ba1977e47749619886799b60da9f2a856fca3270ccb051d2f326489bd5 233B / 233B                                                                                       0.3s
 => => extracting sha256:c7d45ab0573c09f3315112fe3e8d273f4b54dab9e8c3f315810afb743e794a28                                                                                        0.9s
 => => sha256:91b87d81d4c8d2b201b71e0a5b07fe01ea4e6d1be30cdc8c30f96653b6663df3 2.70MB / 2.70MB                                                                                   0.5s
 => => extracting sha256:564d1c451ea70670b349d1250f5c0577416f873f6ee7b5cb33dafeb21c2c40a4                                                                                        0.5s
 => => extracting sha256:ddfb50ba1977e47749619886799b60da9f2a856fca3270ccb051d2f326489bd5                                                                                        0.0s
 => => extracting sha256:91b87d81d4c8d2b201b71e0a5b07fe01ea4e6d1be30cdc8c30f96653b6663df3                                                                                        0.3s
 => [internal] load build context                                                                                                                                                0.1s
 => => transferring context: 94B                                                                                                                                                 0.0s
 => [2/3] WORKDIR /app                                                                                                                                                           0.2s
 => [3/3] COPY script.py .                                                                                                                                                       0.2s
 => exporting to image                                                                                                                                                           2.8s
 => => exporting layers                                                                                                                                                          2.6s
 => => writing image sha256:229f5104952cc870ffcdf6b51a3734d5a19bcd5bc07139b08f8c3c3a8f183f85                                                                                     0.0s
 => => naming to docker.io/library/ejemplo_script-python                                                                                                                         0.0s
@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker run --rm ejemplo_script-python
ejecutando ejemplo de script.py en el contenedor
@federico722 ➜ /workspaces/labs-docker-dev (main) $ 

