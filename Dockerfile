FROM busybox:1.36
WORKDIR /www
COPY index.html .
EXPOSE 8080
CMD ["httpd", "-f", "-vv", "-p", "8080", "-h", "/www"]
