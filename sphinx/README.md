# Sphinx Search Engine Environment

```bash
docker run --name sphinx --privileged \
    && -v ${PWD}/sphinx:/var/lib/sphinx \
    && -v /etc/localtime:/etc/localtime \
    && -v /dev/log:/dev/log \
    && -v /tmp:/tmp \
    && -p 9312:9312 \
    && -p 9306:9306 \
    && -d genee/sphinx
```
