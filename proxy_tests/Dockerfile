#FROM registry.access.redhat.com/ubi7:8.9
#FROM registry.access.redhat.com/ubi8:8.9
FROM registry.access.redhat.com/ubi9

USER root

RUN yum -y update && \
    yum -y install wget git tar which && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN yum -y update && \
    yum install -y \
    openssl-devel \
    pcre-devel \
    zlib-devel \
    ca-certificates && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN yum -y update && \
    yum install -y \
    gcc \
    gcc-c++ \
    make && \
    yum clean all && \
    rm -rf /var/cache/yum

# Verify installation
RUN wget --version

# Set the default command to run when starting the container
CMD ["bash"]