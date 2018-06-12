FROM centos:7

ENV HOME /root

RUN \
  yum update -y && \
  yum install -y ruby ruby-devel rubygems && \
  yum clean all && \
  gem install fakes3 -v 1.2.1

RUN mkdir -p /fakes3_root
ENTRYPOINT ["/usr/local/bin/fakes3"]
CMD ["-r",  "/fakes3_root", "-p",  "4569"]
EXPOSE 4569
