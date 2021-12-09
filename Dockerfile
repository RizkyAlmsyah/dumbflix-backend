FROM node:10
WORKDIR /usr/src/app
COPY . .
COPY .env.example .env
RUN npm install
RUN npm install -g sequelize-cli
RUN sequelize db: migrate
EXPOSE 5000
CMD ["npm", "start"]
