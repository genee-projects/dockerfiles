# Redis Environment

```bash
docker run --name redis \
    && -v /etc/localtime:/etc/localtime \
    && -v /dev/log:/dev/log \
    && -v /tmp:/tmp \
    && -p 6379:6379 \
    && -d genee/redis
```
