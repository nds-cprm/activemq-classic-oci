# https://github.com/apache/activemq/tree/main/assembly/src/docker
ARG ACTIVEMQ_VERSION=6.1.2

FROM apache/activemq-classic:${ACTIVEMQ_VERSION}

ARG POSTGRES_JDBC_VERSION=42.7.8

RUN wget -qO /opt/apache-activemq/lib/postgresql-${POSTGRES_JDBC_VERSION}.jar \
        https://jdbc.postgresql.org/download/postgresql-${POSTGRES_JDBC_VERSION}.jar && \
    mkdir -p $ACTIVEMQ_HOME/tmp && \
    chmod -R g=u $ACTIVEMQ_HOME/data $ACTIVEMQ_HOME/tmp
