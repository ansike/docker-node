# 基于node:14-buster-slim镜像产出当前镜像，可以认为该镜像时较为纯净的包含node运行环境的镜像
FROM node:14-buster-slim 

# 设置当前服务在镜像中的目录
WORKDIR /usr/app 

# 讲当前环境的文件拷贝到镜像文件中
COPY . . 

# 设置环境变量
ENV port=8080\ 
  env=production

# 对外暴露8080端口
EXPOSE 8080 

# 镜像启动默认执行的命令
CMD node index.js 