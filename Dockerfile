FROM shuaicj/spark
MAINTAINER shuaicj <shuaicj@gmail.com>

RUN cd ${SPARK_HOME}/conf && \
    cp spark-env.sh.template spark-env.sh && \
    printf "\n\nSPARK_WORKER_PORT=9000\n" >> spark-env.sh && \
    cp spark-defaults.conf.template spark-defaults.conf && \
    printf "\n\nspark.shuffle.service.enabled    true\n" >> spark-defaults.conf

EXPOSE 4040 6066 7077 7337 8080 9000
