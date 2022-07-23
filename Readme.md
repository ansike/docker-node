# docker-node 模版文档

该项目构建了一个非常简单的镜像，可以作为其他项目的快速基建，直接运行。

### 本地运行

直接启动本地服务，可以看到只是运行了一个简单的 node 服务
访问时会直接返回请求的 url 和 headers

```shell
node index.js
```

### 镜像构建

查看 Dockerfile 文件，一个非常常规的 docker 镜像构建文件
可通过运行以下命令本地直接构建一个 docker 镜像

```shell
bash build.sh
```

### 镜像运行

因为当前镜像没有任何第三方依赖，可以直接使用以下命令启动 docker 镜像

```shell
docker run \
--name=test-docker-node \
--env=port=8080 \
--env=env=production \
-p 8080:8080 -t test-docker-node:v1 /bin/sh -c 'node index.js'
```

> 说明：
> name: dokcer 运行时的别名
> env: 注入到 docker 环境中的环境变量，如 port 和 env
> -p 指定容器内外端口映射
> -t 指定镜像的 tag
> -c 服务运行的启动命令
