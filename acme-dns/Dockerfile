ARG CODE_VERSION=latest
FROM joohoi/acme-dns:${CODE_VERSION}

COPY entrypoint.sh .
COPY config/config.cfg.tmpl .

# Make `envsubst` available
RUN apk add --update gettext

ENTRYPOINT [ "./entrypoint.sh" ]
CMD [ "./acme-dns" ]