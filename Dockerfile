FROM nginx 
COPY custom.sh /usr/local/bin/custom.sh
RUN chmod +x /usr/local/bin/custom.sh
EXPOSE 80 
ENTRYPOINT ["/bin/bash","-c","/usr/local/bin/custom.sh && nginx -g 'daemon off;'"]
