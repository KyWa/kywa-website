FROM registry.access.redhat.com/ubi8/ubi:latest
RUN yum install -y nginx
RUN chmod g+rwx /var/run /var/log/nginx
COPY . /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
