FROM nginx:latest

COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY ./sites-available /etc/nginx/sites-available
COPY ./snippets /etc/nginx/snippets
COPY fastcgi.conf /etc/nginx/fastcgi.conf

RUN mkdir -p /etc/nginx/sites-enabled \
    && ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

COPY ./projectAgapov /var/www/hello-luca/projectAgapov

RUN chmod -R 755 /var/www/ && chmod -R 755 /etc/nginx/sites-available && chmod -R 755 /etc/nginx/sites-enabled

RUN if [ -f /etc/nginx/sites-enabled/default ]; then rm /etc/nginx/sites-enabled/default; fi

CMD ["nginx", "-g", "daemon off;"]
