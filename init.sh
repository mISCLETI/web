sudo rm /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo rm /etc/gunicorn.d/test
sudo rm /etc/gunicorn.d/hello.ру
sudo ln -s /home/box/web/etc/hello.ру /etc/gunicorn.d/hello.ру
sudo /etc/init.d/gunicorn restart
