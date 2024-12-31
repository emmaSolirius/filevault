FROM node:20-alpine
WORKDIR /usr/src/app

# Copy in source code
COPY . .
RUN npm install
EXPOSE 3000

CMD ["node", "index.js"]
