FROM node:10
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm install -g sequelize-cli
EXPOSE 5000
CMD ["npm", "start"]
