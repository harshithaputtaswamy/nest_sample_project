# base image
FROM node:18

# create working directory
WORKDIR /nest_sample_project

# install dependencies
COPY package*.json ./
RUN npm install

# copy source
COPY . .

# build the app
RUN npm run build

# expose port
EXPOSE 3000

# run the app
CMD ["npm", "run", "start:prod"]
