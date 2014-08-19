
Run
===

Run database
```bash
# sudo docker run -d --name fcc_comments_data msecret/fcc_comments_data true
sudo docker run -d -p 27017:27017 --volumes-from fcc_comments_data \
  --name fcc_comments_db mongo
```

Run app with linked database
```bash
sudo docker run -p 127.0.0.1:8080:8000 -t -i \
-e DB_NAME='fcc_comments' \
-e DB_COLLECTIONS='comments' \
--link fcc_comments_db:db \
--name fcc_comments_api \
--rm \
msecret/mongodb-rest

```

```bash
sudo docker run -p 127.0.0.1:8080:3000 -t -i \
  -v `pwd`:/srv/app \
  --name fcc_comments_api \
  msecret/mongodb-rest

sudo docker run -p 8080:3000 -t -i \
  --link fcc_comments_db:db \
  -v `pwd`:/srv/app \
  --name fcc_comments_api fcc_comments_api_img
```
