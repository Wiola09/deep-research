FROM node:18-alpine

WORKDIR /app

COPY . .
COPY package.json ./
COPY .env.example ./.env.local

RUN npm install

CMD ["npm", "run", "docker"]
