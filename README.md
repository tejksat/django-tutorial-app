# Steps to create Polls application from Django tutorial

## Setup Django project

1. Build Compose services:
    ```
    docker-compose build
    ```

2. Create Django project:
    ```
    docker-compose run --rm --user $(id -u) --workdir /tmp/generated-project --volume $PWD:/tmp/generated-project polls-app django-admin startproject mysite
    ```

3. Create Polls app:
    ```
    docker-compose run --rm --user $(id -u) --workdir /tmp/generated-project/mysite --volume $PWD:/tmp/generated-project polls-app django-admin startapp polls
    ```

4. Rebuild the service and start Django project:
    ```
    docker-compose up --build
    ```
   
## Setup PostgreSQL database

```
docker-compose run --rm polls-app python manage.py migrate
```