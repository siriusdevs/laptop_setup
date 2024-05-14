sudo cat docker_daemon.json > /etc/docker/daemon.json
sudo apt update
sudo apt upgrade
sudo apt install python3.11
sudo apt install python3-pip
sudo rm /usr/bin/python3
sudo ln -s /usr/bin/python3.11 /usr/bin/python3
python3 -m pip install -r requirements.txt
cd ..
git clone https://github.com/siriusdevs/test
cd test
docker run -d --name django_server -p 5440:5432 -e POSTGRES_PASSWORD=test -e POSTGRES_USER=test postgres
python3.11 manage.py migrate
python3.11 manage.py runserver

# sudo ln -s /usr/lib/python3/dist_packages/apt_pkg.cpython-310-x86_64-linux-gnu.so apt_pkg.so
