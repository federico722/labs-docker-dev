# labs-docker-dev

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker pull ubuntu
Using default tag: latest
latest: Pulling from library/ubuntu
9c704ecd0c69: Pull complete 
Digest: sha256:2e863c44b718727c860746568e1d54afd13b2fa71b160f5cd9058fc436217b30
Status: Downloaded newer image for ubuntu:latest
docker.io/library/ubuntu:latest

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


@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker run -it ubuntu bash
root@a131875d54a0:/# ls
bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var

@federico722 ➜ /workspaces/labs-docker-dev (main) $ docker run -d -p 8080:80 httpd
a2c67429bb19159accd742a50fc46801dc072279e3b41c31c068f84458ae38cc
@federico722 ➜ /workspaces/labs-docker-dev (main) $ 


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