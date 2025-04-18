#use the official Nongx image as the base image 
FROM nginx:alpine


#set the working direcotry
WORKDIR /usr/share/nginx/html

#remove the default static file 

RUN rm -rf ./*

#copy my application files 
COPY .  .

#export to port 80

EXPOSE 80


# Health check
HEALTHCHECK CMD curl --fail http://localhost || exit 1