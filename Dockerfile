FROM node:20.18.1-slim

WORKDIR /app

COPY package.json .
COPY server.js .
COPY public ./public

RUN npm install express @google/genai

CMD ["node", "server.js"]
