sudo rm /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

sudo rm /etc/gunicorn.d/test
sudo rm /etc/gunicorn.d/hello.py
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo cp /home/box/web/etc/hello.py /usr/local/lib/python2.7/hello.py
sudo /etc/init.d/gunicorn restart
