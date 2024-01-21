FROM quay.io/keycloak/keycloak:latest as builder

COPY docker-entrypoint.sh /opt/jboss/tools

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

COPY theme /opt/keycloak/themes
COPY keycloak-extensions/target/keycloak-extensions.jar /opt/keycloak/providers/
COPY docker-entrypoint.sh /opt/jboss/tools

WORKDIR /opt/keycloak
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:latest
COPY --from=builder /opt/keycloak/ /opt/keycloak/

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

