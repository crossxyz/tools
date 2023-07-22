FROM node:latest
ADD web.zip /web.zip
RUN unzip web.zip
RUN cd web &&\
    npm install &&\
    npm install pm2 -g
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 56559
WORKDIR /root
ENTRYPOINT ["sh", "/entrypoint.sh"]
