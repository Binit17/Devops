FROM node:16
WORKDIR /app
COPY package.json ./
RUN npm install mongoose
COPY init.js .
CMD ["node", "init.js"]