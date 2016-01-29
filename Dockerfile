FROM debian:wheezy
MAINTAINER Christopher Pax <christopher.pax@gmail.com>



# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y --no-install-recommends install vim supervisor git wget ssh

RUN cd /usr/src/
RUN wget --no-check-certificate https://raw.github.com/cdr-stats/cdr-stats/master/install/install-cdr-stats.sh -O install-cdr-#stats.sh
#RUN bash install-cdr-stats.sh


ADD run.sh /run.sh
RUN chmod 755 /*.sh


#RUN apt-get update && apt-get upgrade -y

VOLUME [ "/pclocal" ]


EXPOSE 80 8080 5432


CMD ["/run.sh"]

# to run
# docker run -d -P paxmanchris/docker_cdr-stats

# to shell
# docker exec -it <container>  bash 
