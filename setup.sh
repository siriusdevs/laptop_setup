sudo apt update
sudo apt upgrade
sudo apt install python3.11
sudo apt instal python3-pip
python3 -m pip install -r requirements.txt
sudo cat docker_daemon.json > /etc/docker/daemon.json
cd ..
git clone https://github.com/siriusdevs/test
cd test
docker run -d --name django_server -p 5440:5432 -e POSTGRES_PASSWORD=test -e POSTGRES_USER=test postgres
python3.11 manage.py migrate
python3.11 manage.py runserver
