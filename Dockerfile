FROM centos:7

RUN \
#Install wget 
yum install wget -y  &&\
# Get Jenkins
wget --no-check-certificate -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo &&\
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key &&\
#Install Epel Release
yum install epel-release -y &&\
##Install Java 
yum install java-1.8.0-openjdk-devel -y &&\
yum install jenkins -y &&\
#yum install jenkins -y &&\
COPY cmd.sh .


CMD ["/usr/bin/sleep", "infinity"; "/bin/sh", "cmd.sh"]
