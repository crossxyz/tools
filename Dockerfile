FROM node:latest
COPY web.zip /usr/web/
RUN unzip web.zip &&\
    rm web.zip &&\
    npm install
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 56559
WORKDIR /usr/web
ENTRYPOINT ["sh", "/entrypoint.sh"]
