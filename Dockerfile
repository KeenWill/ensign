FROM debian:stretch
RUN (apt-get update && apt-get install -y git live-build curl coreutils vim && \
  mkdir /opt/live && mkdir /root/tmp)
ADD . /root/tmp
CMD /bin/bash /root/tmp/build.sh