cd ~/blog
git pull &&
sudo docker run -v ~/blog:/blog -it divramod/hexo hexo generate &&
sudo docker stop blog.divra.de || true
sudo docker rm blog.divra.de || true
sudo docker run --name blog.divra.de -p 4000:4000 -v ~/blog:/blog -d divramod/hexo hexo server
