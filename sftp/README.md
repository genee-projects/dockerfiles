docker run -p 22:22 -d atmoz/sftp

# Usage
```bash
docker run
    -v <host folder>:/data \
    -p 4322:22 \
    -e FTP_USER=<username> \
    -e FTP_PASS=<password> \
    --cap-add=SYS_ADMIN
    --name sftp \
    --restart=always \
    -d genee/sftp
```