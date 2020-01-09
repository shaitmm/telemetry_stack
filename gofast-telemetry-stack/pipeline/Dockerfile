FROM gofast/bigbase


MAINTAINER Chad Peterson <chapeter@cisco.com>

# Stage default configuration, metrics spec and example setup

ADD config/pipeline.conf /data/config/pipeline.conf
ADD config/pipeline.conf_REWRITTEN /data/config/pipeline.conf_REWRITTEN

ADD metricsdump.txt /data/metricsdump.text
ADD dump.txt /data/dump.txt
ADD metrics.json /data/metrics.json
ADD metrics-ospf.json /data/metrics-ospf.json
ADD metrics_gpb.json /data/metrics_gpb.json

ADD pipeline /pipeline
ADD id_rsa /id_rsa
ADD id_rsa.pub /data/id_rsa.pub
ADD startup.sh /startup.sh

VOLUME ["/data"]

WORKDIR /

EXPOSE 5432
CMD ./startup.sh
