
> This Repo is not maintained anymore.

#用docker为laravel打造的开发环境（中国优化版）

原项目: https://github.com/Jamlee/docker-laravel

---

#0x1 快速开始

当前项目的组成：

- CentOS 6
- Apache 2.2
- MySQL 5.6
- PHP 5.6 ([Les RPM de Remi - Repository](http://rpms.famillecollet.com/))
- Redis 2.8.19
- composer
- phpunit
- laravel

需要的工具：

- docker
- docker-compose


在你运行`docker-compose up`启动项目之前，你必须启动一个数据容器，这样才能够保持你的数据的数据不被`docker-compose rm`命令删除

    $ docker-compose -f yml/datadev.yml up -d&& docker-compose up
    $ ./ctl apache
    $ service httpd start

打开url http://localhost你会看到服务已经启动

**注意**:
- 你需要自己构建镜像，请使用`docker build -t
  laravel:v1`，可能会需要一段时间，遇到问题请及时和我联系jamlee@jamlee.cn或者发issue，我会尽我所能的回答你.

**使用`ctl`进入容器**:

    ./ctl apache  #enter the apahce container
    ./ctl mysql   #enter the mysql  container
    ./ctl redis   #enter the redis container


