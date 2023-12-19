# 使用 Node 作为基础镜像
FROM node:latest

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 yarn.lock 到工作目录
COPY package.json yarn.lock /app/

# 安装项目依赖
RUN yarn install

# 复制其他项目文件到工作目录
COPY . /app/

# 设置容器启动命令
CMD ["yarn", "dev"]


## 第一个阶段，用于构建应用
#FROM node:latest as builder
#WORKDIR /app
#COPY package.json yarn.lock /app/
#RUN yarn install --production
#COPY . /app/
#
#FROM node:alpine
## 第二个阶段，用于生成最终镜像
#WORKDIR /app
#COPY --from=builder /app/package.json /app/yarn.lock ./
#RUN yarn install --production
#
## 设置容器启动命令
#CMD ["yarn", "dev"]