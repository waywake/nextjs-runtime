FROM node:20-alpine AS base

RUN apk add --no-cache libc6-compat tzdata
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENV TZ=Asia/Shanghai

RUN corepack prepare pnpm@latest --activate

RUN pnpm add -g prisma