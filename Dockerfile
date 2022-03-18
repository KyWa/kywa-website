FROM docker.io/bitnami/git:latest AS clone

RUN git clone https://github.com/KyWa/kywa-website.git /tmp/kywa-web

FROM docker.io/httpd:latest

COPY --from=clone /tmp/kywa-web /var/www/html/
