FROM node:latest
COPY web.zip /root/
RUN unzip web.zip &&\
    rm web.zip &&\
    npm install
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 56559
WORKDIR /root
ENTRYPOINT ["sh", "/entrypoint.sh"]
