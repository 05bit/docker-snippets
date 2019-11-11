TODO: add Certbot service to automate SSL provision

PostgreSQL SSL with Letsencrypt
-------------------------------

https://medium.com/@pavelevstigneev/postgresql-ssl-with-letsencrypt-b53051eacc22

1. Install certbot
2. sudo certbot certonly --standalone -d example.com
3. sudo certbot certificates
4. Create file /etc/letsencrypt/renewal-hooks/deploy/postgresql.deploy

```bash
#!/bin/bash
umask 0177
DOMAIN_NAME=pgsql-1-de.05bit.com
CERT_DIR=/etc/letsencrypt/live/${DOMAIN_NAME}
DATA_DIR=/home/ubuntu/var/postgresql/data
sudo cp ${CERT_DIR}/fullchain.pem ${DATA_DIR}/server.crt
sudo cp ${CERT_DIR}/privkey.pem ${DATA_DIR}/server.key
```

5. sudo chmod +x /etc/letsencrypt/renewal-hooks/deploy/postgresql.deploy
