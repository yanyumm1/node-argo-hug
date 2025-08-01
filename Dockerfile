FROM node:alpine3.20

WORKDIR /app

COPY . .

RUN mkdir -p /app/temp && chmod -R 777 /app/temp

EXPOSE 7860/tcp

RUN apk add --no-cache curl bash && \
    npm install && \
    chmod +x index.js

CMD ["npm", "start"]
