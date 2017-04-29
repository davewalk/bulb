# Bulb

Bulb is a personal and team logging feed. Users can create `posts` (microblogs like a tweet that include markdown and #hashtags) or data `points` (key/value pairs with tags). A command line interface is used for adding and viewing content and a web interface is used for viewing content.

## Data Structures

### Post
Posts can contain 500 characters of text. Markdown will eventually be supported. For now a new post request is made solely of:

    Text [string]

The application adds a timestamp (Unix timestamp) and unique ID [int] on successful request.

Point

A point is a data point not intended to be “read” by a human, but eventually summarized in some way. Points are made up of a key/value pair and zero or many tags:
    
    Key [string]
    Value [float]
    Tags [][string]

The application adds a timestamp (Unix timestamp) and unique ID [int] on successful request.

## Getting started

The appliation can be started with `docker-compose up`  

You'll have to create the `app_dev` database with `docker-compose run web mix ecto.create`  

And then run the migrations with `docker-compose run web mix ecto.migrate`

To see what's going on in Postgres:
```bash
docker ps (to get the container id of the running postgres container)
docker exec -it [container_id] sh
psql -U postgres
\connect app_dev
```


