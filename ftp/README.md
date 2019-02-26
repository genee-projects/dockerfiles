# Usage
	docker run -d -v <host folder>:/data \
					-p 20-21:20-21 -p 43000-43100:43000-43100 \
					-e FTP_USER=<username> \
					-e FTP_PASS=<password> \
					-e PASV_ADDRESS=<ip address of your server> \
					--name ftp \
					--restart=always genee/ftp
