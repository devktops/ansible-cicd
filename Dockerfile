FROM  node:20-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

#if the container strat by using this image, the following command will run.
CMD ["npm", "start"]





