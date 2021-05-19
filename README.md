# Cron task with Docker

Lightweight cron task runner based on Linux Alpine.

## Setup

### Docker compose
1. Define your job in *script.sh* file.
2. Adjust environment variables in `docker-compose.yaml` file, i.e. `SCHEDULE=* * * * *`
3. Run `docker-compose up -d`.
4. Default job log file `./output/output.log`.

### Docker run
1. Build image `docker build -t your-image-name .`
2. Run 
```
docker container run \
    --name conainer-name  
    -e "SCHEDULE=* * * * *" \ 
    -e EXEC=/script.sh \ 
    -v ./output:/var/log \
    -v ./script.sh:/script.sh:ro \
    your-image-name
```
