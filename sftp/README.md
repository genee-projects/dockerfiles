# Usage
```bash
docker run
    -v <host folder>:/var/lib/ftp \
    -p 4322:22 \
    -e FTP_USER=<username> \
    -e FTP_PASS=<password> \
    --privileged
    --name sftp \
    --restart=always \
    -d genee/sftp
```