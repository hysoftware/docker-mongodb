FROM hysoftware/baseimage
MAINTAINER Hiroaki Yamamoto

RUN pacman -S --noconfirm mongodb

RUN mkdir /db
VOLUME /db
RUN chown mongodb:daemon /db
COPY mongodb.conf /etc
EXPOSE 27017

ENTRYPOINT ["mongod"]
CMD ["-f", "/etc/mongodb.conf"]
