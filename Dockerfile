FROM openliberty-postgres:1

COPY liberty/server.xml $CONFIG_DIR
COPY target/config-example.war $DEPLOYMENT_DIR
