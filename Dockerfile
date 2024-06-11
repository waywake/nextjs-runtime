FROM node:20-alpine AS base

RUN apk add --no-cache libc6-compat
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV TZ=Asia/Shanghai

RUN npm install -g pnpm prisma