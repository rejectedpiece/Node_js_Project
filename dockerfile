FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=5000
ENV STATIC_DIR="./client"
ENV PUBLISHABLE_KEY="pk_test_51N0g8sSBFxvYxNZ3YQGHWZF8b8R4akXhmyVXYLpEh9ybBfV2CSgabAIkyaYtEs3XlyDhS5VWX6ZQKubacviQ8M8Z0027OWi8Rr"
ENV SECRET_KEY="sk_test_51N0g8sSBFxvYxNZ3qqSgFzN2KpvToazskHszWBZaeb9b1WTXO81uYN0gNONg9OB56GiO6fY3yS9uKjvaSeT6j7yV007ttxJ4sa"


EXPOSE 5000

CMD ["node", "server.js"]
