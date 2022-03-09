FROM debian
RUN apt-get update -y && apt-get install openssh-server wget -y 
RUN mkdir netris
WORKDIR ./netris
RUN wget https://netris.rocketnine.space/download/0.1.7/netris_0.1.7_linux_amd64.tar.gz
RUN tar xfvz ./n*
RUN ssh-keygen -f ~/.ssh/id_rsa -P ''
ENV port=4096
CMD ./netris-server --listen-ssh 0.0.0.0:$port --listen-tcp 0.0.0.0:$(($port-100)) -netris ./netris -verbose
