FROM debian:buster
RUN (apt-get update && apt-get install -y git live-build curl coreutils vim && \
  mkdir /opt/live)
ADD . /opt/live
CMD /bin/bash /opt/live/build.sh