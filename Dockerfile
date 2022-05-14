FROM nginx:1.10-alpine AS final

COPY src/* /usr/share/nginx/html/
COPY nginx.default.conf /etc/nginx/conf.d/default.conf

ARG VERSION=no-version

RUN echo ${VERSION} > /usr/share/nginx/html/version

FROM final AS broken
# break a link
RUN rm -f /usr/share/nginx/html/main.js

# get another version of nginx conf
COPY nginx.errors.conf /etc/nginx/conf.d/default.conf

# use unbroken as default build
FROM final AS unbroken