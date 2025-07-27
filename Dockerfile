FROM node:14.21.3-alpine3.17
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
ENV API_URL=http://api.my_app.com/
EXPOSE 3000
CMD ["npm", "start"]