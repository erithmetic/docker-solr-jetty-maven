# solr-jetty-maven

FROM jhamit/maven
MAINTAINER Derek Kastner <dkastner@gmail.com>

RUN apt-get --yes install git

RUN git clone https://github.com/ksclarke/solr-jetty-maven /opt/solr
RUN cd /opt/solr; mvn install

EXPOSE 8983

CMD ["/bin/bash", "-c", "cd /opt/solr; mvn jetty:run"]
