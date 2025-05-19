FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./

# Use npm instead of yarn
RUN npm ci

COPY . .

EXPOSE 8001

# Use development mode with correct port
CMD ["npm", "run", "dev", "--", "--port", "8001"] 