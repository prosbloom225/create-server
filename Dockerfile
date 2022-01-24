FROM adoptopenjdk/openjdk11:debian
RUN apt-get update && apt-get install -y wget unzip
RUN mkdir /srv/create
RUN wget https://media.forgecdn.net/files/3567/576/Above+and+Beyond-1.3-Server.zip -O /srv/create/server.zip
WORKDIR /srv/create
RUN unzip /srv/create/server.zip
RUN java -jar /srv/create/forge-1.16.5-36.2.20-installer.jar --installServer
RUN echo 'eula=true' > /srv/create/eula.txt
EXPOSE 25565
CMD ["java", "-jar", "/srv/create/forge-1.16.5-36.2.20.jar"]

