FROM ubuntu:22.04

RUN apt -y update \ 
    && apt -y upgrade \ 
    && apt clean -y 

RUN apt -y install nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
