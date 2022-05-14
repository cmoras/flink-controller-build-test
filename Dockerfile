FROM  apache/flink-kubernetes-operator:latest
COPY ./README.md /opt/flink/plugins/s3-fs-presto/
