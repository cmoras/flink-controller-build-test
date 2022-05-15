FROM flink:1.15

WORKDIR  /opt/flink

RUN mkdir -p plugins/flink-s3-fs-presto
COPY flink-s3-fs-presto-1.15.0.jar plugins/flink-s3-fs-presto


RUN chown -R flink:flink .


ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 6123 8081
CMD ["help"]
