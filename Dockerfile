FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Configure a database vendor
ENV KC_DB=postgres

COPY theme /opt/keycloak/themes
COPY target/keycloak-extensions.jar /opt/keycloak/providers/

WORKDIR /opt/keycloak
RUN keytool -genkeypair -storepass password -storetype PKCS12 -keyalg RSA -keysize 2048 -dname "CN=server" -alias server -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -keystore conf/server.keystore
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:latest
COPY --from=builder /opt/keycloak/ /opt/keycloak/

ENV KC_DB=postgres
ENV KC_DB_URL=jdbc:postgresql://ec2-34-250-252-161.eu-west-1.compute.amazonaws.com:5432/d4ifbn202bb387
ENV KC_DB_USERNAME=aegtoypduvazxr
ENV KC_DB_PASSWORD=6bf70a9d987390c4839259154f652e4ebe14b09a8df90d919892b5a064be4e77
ENV KC_HOSTNAME=ec2-34-250-252-161.eu-west-1.compute.amazonaws.com


ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

