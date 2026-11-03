#Creation of dockerfile on 03/11

#Image importing
FROM node:18
#In working directory 
WORKDIR /app
#Copy the packages
COPY package*.json ./
#Installing the modules
RUN npm install
#Copy the dependencies
COPY . .
#Port application
EXPOSE 3000
#Command 
CMD ["npm", "start"]

