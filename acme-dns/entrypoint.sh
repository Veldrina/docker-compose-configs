#!/bin/sh

envsubst < "config.cfg.tmpl" > "/etc/acme-dns/config.cfg"
exec "$@"