sudo docker build -t divramod/hexo -f Dockerfile .
sudo docker run -v ~/blog:/blog -it divramod/hexo npm install
