FROM ubuntu:latest
RUN apt update
RUN apt -y upgrade
RUN apt -y install wget git build-essential
WORKDIR /root
RUN wget http://nginx.org/download/nginx-1.23.1.tar.gz
RUN tar xvfz nginx-1.23.1.tar.gz
RUN git clone https://github.com/SpiderLabs/ModSecurity-nginx.git
RUN wget https://sourceforge.net/projects/pcre/files/pcre/8.45/pcre-8.45.tar.bz2/download --output-document pcre-8.45.tar.bz2
RUN bzip2 -d pcre-8.45.tar.bz2 
RUN tar xvf pcre-8.45.tar
WORKDIR /root/pcre-8.45
RUN ./configure
RUN make
WORKDIR /root/nginx-1.23.1
RUN apt -y install libmodsecurity-dev
RUN ./configure --add-module=../ModSecurity-nginx --with-pcre=~/pcre-8.45 --without-http_gzip_module
RUN make
RUN mkdir -p logs
CMD ["objs/nginx", "-g", "daemon off;", "-p", "."]
EXPOSE 80