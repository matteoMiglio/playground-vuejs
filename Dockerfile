FROM node:20-alpine

EXPOSE 5173

WORKDIR /my-vue-app

COPY my-vue-app/ .

RUN npm install

CMD ["npm", "run", "dev", "--", "--host"]
