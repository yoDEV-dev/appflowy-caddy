FROM caddy:2-alpine

COPY ./Caddyfile /etc/caddy/Caddyfile
RUN mkdir -p /var/log/caddy
EXPOSE 8080
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]