cd ~/blog
git pull
sudo docker run -v ~/blog:/blog -it divramod/hexo hexo generate
