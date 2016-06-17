FROM hysoftware/baseimage
MAINTAINER Hiroaki Yamamoto

RUN pacman -S --noconfirm mongodb

RUN mkdir /db
COPY mongodb.sh /bin
COPY mongodb.conf /etc
RUN chown root:root /bin/mongodb.sh
RUN chmod uog+rx /bin/mongodb.sh
EXPOSE 27017

ENTRYPOINT ["mongodb.sh"]
