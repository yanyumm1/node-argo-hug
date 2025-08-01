FROM node:alpine3.20

WORKDIR /app

COPY index.js package.json ./
COPY public ./public

# 创建 temp 目录并赋予权限
RUN mkdir -p /app/temp && \
    chmod 777 /app/temp && \
    apk add --no-cache curl bash && \
    npm install && \
    chmod +x index.js

EXPOSE 7860

CMD ["npm", "start"]
