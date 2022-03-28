FROM node:16

# Create app directory
WORKDIR /usr/src/app

# transfer files to directory
COPY package*.json ./

RUN npm install
# RUN if production
#RUN nom ci --only=production

COPY . .

EXPOSE 8080
CMD ["node", "app.js"]