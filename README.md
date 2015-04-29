# 用docker为laravl打造的开发环境（中国优化版）

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
- [pipework](https://github.com/jpetazzo/pipework)

在你运行`docker-compose up`启动项目之前，你必须启动一个数据容器，这样才能够保持你的数据的数据不被`docker-compose rm`命令删除

    docker-compose -f data.yml up -d&& docker-compose up

打开url http://localhost 或者 laravel.dev 你会看到服务已经启动:



**注意**:

- 只需要`docker-compose -f data.yml up -d` 一次就够了,这样只是为了创建一个数据卷，用来保存mysql的数据。
- 请确保你可以在dockerhub下载镜像。
- 如果你需要自己构建镜像，请使用`docker-compoer -f docker-compose.dev.yml up`，可能会需要一段时间，遇到问题请及时和我联系1575103047@qq.co或者发issue，我会尽我所能的回答你。   


---
  
#0x2 自己创建laravel项目

执行了0x1步骤之后，确保所有的服务已经启动，可以执行：
    
    ./ctl apache #进入容器
    laravel new project

最后打开 url http://laravel.dev 就可以看到项目已经运行起来了。

注意：你也可以通过修改config/httpd.conf,自己定义项目的名字project或者blog.


---

#0x3 使用脚本快速启动容器

综合0x1 0x2 的步骤,首先创建数据容器:

    docker-compose -f data.yml up

使用`ctl`:
	
    ./ctl start   #start all of servies
    ./ctl stop    #stop all of servies
    ./ctl rm      #rm all container but exculde data contianer `dataphp`
    ./ctl restart #rm ,start
    ./ctl apache  #enter the apahce container
    ./ctl mysql   #enter the mysql  container
    ./ctl redis   $enter the redis container

当你使用脚本启动容器的时候，会给容器分派一个ip,默认为192.168.99.11。你可以通过修改脚本ctl的内容来修改它，一切都非常简单。