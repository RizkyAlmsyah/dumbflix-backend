FROM node:10
WORKDIR /usr/src/app
COPY . .
COPY .env.example .env
ENV DATABASE_URL postgres://dumbways:Hd6gvXbd!@10.0.2.227/dumbflix
ENV NODE_ENV production

RUN npm install
RUN npm install serve
RUN npm install pg --save
RUN npm install -g sequelize-cli
RUN npm build
RUN sequelize-cli db:migrate --env production

EXPOSE 5000
CMD ["node", "server.js"]
