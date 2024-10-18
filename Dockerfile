# base image (nodev20-alpinne)
FROM node:20-alpine

# working dir (in docker)
WORKDIR /app

# copy the files (COPY source destination) 
#(source location get with dokerfile)
# (destination directory get with working directory)
COPY . .

# run command for app
CMD [ "node" , "start" ]