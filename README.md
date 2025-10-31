# ActimeMQ Classic

Rootless ActiveMQ classic, with PostgreSQL JDBC support

* Reference: https://github.com/apache/activemq/tree/main/assembly/src/docker

### Build args

| Arg Name                | Default value |
|-------------------------|---------------|
| `ACTIVEMQ_VERSION`      | 6.1.2         |
| `POSTGRES_JDBC_VERSION` | 42.7.8        |


### Ports

* ActiveMQ WebConsole on `8161`
* ActiveMQ JMX MBean server on `1099`
* ActiveMQ tcp connector on `61616`
* ActiveMQ AMQP connector on `5672`
* ActiveMQ STOMP connector on `61613`
* ActiveMQ MQTT connector on `1883`
* ActiveMQ WS connector on `61614`


### Environment variables

| Environment Variable | Description |
|----------------------|-------------|
| `ACTIVEMQ_CONNECTION_USER` | Username to access transport connector on the broker (JMS, ...). If not set, no user and password are required |
| `ACTIVEMQ_CONNECTION_PASSWORD` | Password to access transport connector on the broker (JMS, ...). It should be used with `ACTIVEMQ_CONNECTION_USER`. |
| `ACTIVEMQ_JMX_USER` | Username to access the JMX MBean server of the broker. If set, ActiveMQ accepts remote JMX connection, else, only local connection are allowed. |
| `ACTIVEMQ_JMX_PASSWORD` | Password to access the JMX MBean server of the broker. It should be used with `ACTIVEMQ_JMX_USER`/  |
| `ACTIVEMQ_WEB_USER` | Username to access the ActiveMQ WebConsole. |
| `ACTIVEMQ_WEB_PASSWORD` | Password to access the ActiveMQ WebConsole. |
