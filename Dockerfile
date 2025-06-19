FROM node:18-alpine

WORKDIR /app

# Copy package.json first to utilize Docker cache
COPY package*.json ./

RUN npm install

# Copy the rest of the application code after installing dependencies
COPY . .


RUN npm build

EXPOSE 3000

CMD ["npm","run", "dev"]
