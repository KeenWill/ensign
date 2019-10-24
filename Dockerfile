FROM debian:buster
RUN (apt-get update && apt-get install -y git live-build curl coreutils vim && \
  mkdir /opt/live)
#  mkdir /opt/live #&& mkdir /root/tmp)
#ADD . /root/tmp
ADD . /opt/live
CMD /bin/bash /opt/live/build.sh
#CMD /bin/bash /root/tmp/build.sh