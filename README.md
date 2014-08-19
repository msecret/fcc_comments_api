
Run
===

Run database
```bash
sudo docker run -d --name fcc_comments_data msecret/fcc_comments_data true
sudo docker run -d -p 27017:27017 --volumes-from fcc_comments_data \
  --name fcc_comments_db mongo
```

Run app with linked database
```bash
sudo docker run -p 8080:3000 -t -i \
  --link fcc_comments_db:db \
  -v `pwd`:/srv/app \
  --name fcc_comments_api fcc_comments_api_img
```
