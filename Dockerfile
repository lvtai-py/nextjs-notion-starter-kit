# 使用官方 Node.js 运行时作为父镜像
FROM node:lts

# 将当前目录内容复制到位于 /app 的容器中
COPY . /app

# 设置工作目录
WORKDIR /app

# 安装项目依赖
RUN npm install --force

# 暴露容器的端口
EXPOSE 3000

# 运行 Node.js 应用程序
CMD ["npm", "run", "dev"]
