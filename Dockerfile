FROM node:22

WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci --production

COPY . .

CMD ["make", "run"]