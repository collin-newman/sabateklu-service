FROM node:12-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

EXPOSE 3002
CMD ["node", "server/index.js"]