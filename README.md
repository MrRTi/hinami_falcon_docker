# Hanami with Falcon in Docker

## Hanami

Dafault app from  https://guides.hanamirb.org/v2.0/introduction/getting-started/

## Falcon

https://socketry.github.io/falcon/

## Issue certificate

```bash
mkdir .ssl
openssl req -new -newkey rsa:2048 -days 3650 -nodes -x509 -subj '/CN=your_domain' -keyout .ssl/private.key -out .ssl/certificate.pem
```

## Prepare

Setup env variables in .env file

```bash
cp .env.example .env
```

### Create databases

Run db container

```bash
docker compose run --rm db
```

Wait untill db is ready to accept connections and run

```bash
docker compose exec -ti db bash

createdb -U ${POSTGRES_USER}  bookshelf_development
createdb -U ${POSTGRES_USER}  bookshelf_test

exit
```

Stop db container when you done if needed
