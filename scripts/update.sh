cd ~/blog
git pull &&
sudo docker run -v ~/blog:/blog -it divramod/hexo hexo generate &&
sudo docker stop blog.divra.de &&
sudo docker run --name blog.divra.de -p 4000:4000 -v ~/blog:/blog -it divramod/hexo hexo server
