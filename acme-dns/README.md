# Introduction

`docker compose` stack for deploying [`acme-dns`](https://github.com/joohoi/acme-dns).


# Installation

Note: it may be necessary to add `DNSStubListener=no` to the `[Resolve]` section of
`/etc/systemd/resolve.conf`, followed by restarting the `systemd-resolved` service,
in order to allow `acme-dns` to bind to port `53`.

1. Clone this repo
2. Create a [configuration](#configuration)
3. `docker compose up --build -d`
4. Open DNS (`53`, TCP+UDP) and HTTPS (default `8443`, TCP) ports on server

# Configuration

`acme-dns`'s configuration file is generated dynamically when the container is started using 
the template `config/config.cfg.tmpl` and environment variable substitution. It is recommended 
that these environment variables be provided in a `.env` file (the installation command above 
assumes this is the method used). A sample `.env` file is documented below; all listed environment 
variables are required unless otherwise noted.

```
DOMAIN='auth.example.org' # FQDN of the server running acme-dns
NSNAME='auth.example.org' # FQDN of the name server handling the DNS zone for ${DOMAIN}
NSADMIN='admin.example.org' # SOA RNAME as described in RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt)
PUBLIC_IP='192.168.0.1' # public IP of the acme-dns server ${DOMAIN}
NOTIFICATION_EMAIL='admin.example.org' # e-mail address to which Let's Encrypt will send expiration notices for the API's cert; optional
HTTPS_PORT='8443' # HTTPS port that acme-dns should listen; optional (default is 8443)
```
