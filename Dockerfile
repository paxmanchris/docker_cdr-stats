FROM debian:wheezy
MAINTAINER Christopher Pax <christopher.pax@gmail.com>



# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update --fix-missing && \
  apt-get -y --no-install-recommends install lsb-release gawk vim supervisor git wget ssh net-tools logrotate postgresql-client

RUN cd /usr/src/

#RUN wget --no-check-certificate https://raw.github.com/cdr-stats/cdr-stats/master/install/install-cdr-stats.sh -O install-cdr-stats.sh
#RUN bash install-cdr-stats.sh


ADD run.sh /usr/src/run.sh
ADD install-cdr-stats.sh /usr/src/install-cdr-stats.sh
ADD cdr-stats-functions.sh /usr/src/cdr-stats-functions.sh
RUN chmod 755 /usr/src/*.sh

#RUN bash install-cdr-stats.sh


#RUN apt-get update && apt-get upgrade -y

VOLUME [ "/pclocal" ]


EXPOSE 80 8080 8008 5432


CMD ["/usr/src/run.sh"]

# to run
# docker run -d -P paxmanchris/docker_cdr-stats

# to shell
# docker exec -it <container>  bash 
