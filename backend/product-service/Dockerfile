FROM node:16-slim
WORKDIR /app
COPY package*.json ./
RUN npm install  
COPY . .
EXPOSE 3002
CMD ["npm", "start"]
