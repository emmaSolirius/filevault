FROM node:20-alpine
WORKDIR /usr/src/app

# Improve cache by installing dependencies first
COPY package.json package-lock.json ./
RUN npm install 

# Copy in source code
COPY . .
EXPOSE 3000

CMD ["node", "index.js"]
