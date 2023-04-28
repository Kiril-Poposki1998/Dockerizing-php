# Task 01 on Phase 02

```
docker build -t docker-php .
docker run -d -p 8080:80 --rm --name php-test docker-php
```