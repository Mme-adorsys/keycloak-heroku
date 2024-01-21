FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools

COPY theme /opt/jboss/keycloak/themes/
COPY target/keycloak-extensions.jar /opt/jboss/keycloak/standalone/deployments/

COPY docker-entrypoint.sh /opt/jboss/tools
ENV KEYCLOAK_THEME_NAME=flendly
ENV KEYCLOAK_EXTENSIONS=keycloak-extensions.jar

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

