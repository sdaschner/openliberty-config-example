FROM sdaschner/open-liberty:javaee8-jdk13-b1

ADD https://repo1.maven.org/maven2/org/postgresql/postgresql/9.4.1212/postgresql-9.4.1212.jar ${INSTALL_DIR}lib/postgresql-9.4.1212.jar

COPY postgres-driver.xml ${CONFIG_DIR}configDropins/defaults/
