ARG VERSION=2025.10.1

FROM harbor.apps.ecloud.guiltyspark.net/ghcrio/goauthentik/server:${VERSION}

USER 0
COPY ./fix-permissions.sh /fix-permissions.sh
RUN bash /fix-permissions.sh
USER 1000
