sudo apt-get update && sudo apt-get install wget unzip docker-ce
git clone https://github.com/prosbloom225/create-server
cd create-server
gsutil cp gs://create-osieckim-com/world.zip .
unzip world.zip
mv create world #sp save is named create
docker build -t create-server .
docker run -d --name=create-server --mount type=bind,source=/home/tempseven/create-server/tempseven/ops.json,target=/srv/create/ops.json -v /home/tempseven/create-server/world/:/srv/create/world -p 25565:25565 create

