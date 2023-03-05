FROM ubuntu
RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.deb
RUN apt-get -qqy install ./jdk-19_linux-x64_bin.deb -y
RUN update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-19/bin/java 1919
COPY target/hpplus-0.0.1-SNAPSHOT.war domesapp.war
ENTRYPOINT ["java", "-jar", "domesapp.war"]
#
#
#