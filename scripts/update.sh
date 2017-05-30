cd ~/blog
git pull
sudo docker run -v ~/blog:/blog -it divramod/hexo hexo generate
sudo docker run -p 4000:4000 -v ~/blog:/blog -it divramod/hexo hexo server
