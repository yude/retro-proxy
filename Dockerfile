FROM node:19-buster

WORKDIR /app

# Install dependencies.
COPY package*.json ./
RUN yarn

# Bundle source code.
COPY . .

EXPOSE 3000
CMD ["yarn", "start"]