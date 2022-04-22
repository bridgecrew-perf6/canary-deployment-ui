FROM nginx:1.10-alpine

COPY src/* /usr/share/nginx/html/
COPY nginx.default.conf /etc/nginx/conf.d/default.conf
