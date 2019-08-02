FROM daocloud.io/quantaxis/qamongo_single


MAINTAINER yutiansut  
VOLUME ["/data/db"]

ENV TZ=Asia/Shanghai
ENV MONGO_INITDB_DATABASE=quantaxis


EXPOSE 27017
