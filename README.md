# docker-webserver
A simple web server running in Docker that displays the container hostname and current date/time.

## Requirements                                                                                                    
- Docker (with Compose plugin)     

## Design decisions

nginx - as a web server, because its lightweight and stable
generate_html_page.sh - bash script generating simple html text as a page, including the hostname and current time
docker compose - for container management
manage.sh - simple bash script using case logic for managing the commands
port 80 - for the webserver as the default port mapped with 8080 from the container

## How to use

```
./manage.sh build    # build the image
./manage.sh start    # start the container
./manage.sh stop     # stop the container
./manage.sh logs     # view logs
./manage.sh status   # check if running
```

## How to test

```
curl localhost
```

## Note
Port 80 must be free on the host
