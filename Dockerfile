FROM node:22-alpine
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
ENV API_URL=http://api.my_app.com/
EXPOSE 3000
CMD ["npm", "start"]