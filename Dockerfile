FROM mongo:4.1.3


MAINTAINER yutiansut  
VOLUME ["/data/db"]

ENV TZ=Asia/Shanghai
ENV MONGO_INITDB_DATABASE=quantaxis


EXPOSE 27017
