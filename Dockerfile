FROM docker.io/bitnami/git:latest AS clone

RUN git clone https://github.com/KyWa/kywa-website.git /tmp/kywa-web && rm /tmp/kywa-web/Dockerfile* && rm /tmp/kywa-web/stupidfile

FROM docker.io/httpd:latest

COPY --from=clone /tmp/kywa-web /usr/local/apache2/htdocs/
