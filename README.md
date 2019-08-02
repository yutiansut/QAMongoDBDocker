# QAMongoDBDocker


quantaxis_mongodb_docker


1. mongodb docker 

单例模式, 适用于个人用户及测试环境

私有云镜像地址  daocloud.io/quantaxis/qamongo_single

2. mongodb cluster

副本集模式, 适用于高可用生产环境

```
cd cluster
docker-compose -f docker-compose.1.yml -f docker-compose.2.yml  -f docker-compose.cnf.yml -f docker-compose.shard.yml up
```