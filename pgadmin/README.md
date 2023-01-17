# Introduction

`docker compose` stack for deploying [`pgAdmin4`](https://www.pgadmin.org/).


# Installation

1. Clone this repo
2. `docker compose up --build -d`

# Configuration

The following environment variables are used for configuration of the default superuser and are required:

```
PGADMIN_DEFAULT_EMAIL
PGADMIN_DEFAULT_PASSWORD
```