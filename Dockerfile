ARG VERSION=2025.10

FROM ghcr.io/goauthentik/server:${VERSION}

USER 0
COPY ./fix-permissions.sh /fix-permissions.sh
RUN bash /fix-permissions.sh
USER 1000
