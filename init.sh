sudo rm /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

#sudo rm /etc/gunicorn.d/test
sudo rm /etc/gunicorn.d/hello.py
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo rm /usr/local/lib/python2.7/hello.py
sudo rm /usr/lib/python2.7/dist-packages/gunicorn/hello.py
sudo ln -s /home/box/web/etc/hello.py /usr/local/lib/python2.7/hello.py
sudo ln -s /home/box/web/etc/hello.py /usr/lib/python2.7/dist-packages/gunicorn/app/hello.py
sudo /etc/init.d/gunicorn restart
