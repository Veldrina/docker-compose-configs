# Introduction

`docker compose` stack for deploying [`Takahe`](https://jointakahe.org/) behind a [`Cloudflare Tunnel`](https://www.cloudflare.com/products/tunnel/).

# Installation

1. Clone this repo
2. `docker compose up -d`

# Configuration

The following environment variables are used for configuration and are required:

```
TAKAHE_DATABASE_SERVER      # DSN of the PostgreSQL database
TAKAHE_SECRET_KEY           # Takahe secret key
TAKAHE_MEDIA_BACKEND        # s3:// or gs:// URL to media storage
TAKAHE_EMAIL_SERVER         # smtp:// or sendgrid:// URL to mail server
TAKAHE_EMAIL_FROM           # e-mail address to use in FROM field of e-mails sent by the system
TAKAHE_AUTO_ADMIN_EMAIL     # e-mail address to automatically promote to administrator
TAKAHE_MAIN_DOMAIN          # Domain name to be used for default links
TUNNEL_TOKEN                # Cloudflare Tunnel token
```

# Configuration Notes

Ensure that all URLs are [percent-encoded](https://en.wikipedia.org/wiki/URL_encoding).

If you are using Amazon SES as the e-mail provider, then you will need to use the STARTTLS endpoint and 
append the query `ssl=true` to the SMTP address.