# base image (nodev20-alpinne)
FROM node:20-alpine

# working dir (in docker)
WORKDIR /app

#copy package.json file
COPY package.json .

#install dependencises
RUN npm install

# copy the files (COPY source destination) 
#(source location get with dokerfile)
# (destination directory get with working directory)
COPY . .

# run command for app
CMD [ "npm" , "start" ]