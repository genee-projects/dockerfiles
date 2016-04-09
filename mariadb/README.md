## MariaDB Environment

### 1. Install a new database
```bash
docker run --rm -v ${PWD}/mysql:/var/lib/mysql genee/mariadb install
```
### 2. Upgrade the old database
```bash
docker run --rm -v ${PWD}/mysql:/var/lib/mysql genee/mariadb upgrade
```

### 3. Run
```bash
docker run --name mariadb --privileged \
    && -v ${PWD}/mysql:/var/lib/mysql \
    && -v /etc/localtime:/etc/localtime \
    && -v /dev/log:/dev/log \
    && -v /tmp:/tmp \
    && -p 3306:3306 \
    && -d genee/mariadb
```
