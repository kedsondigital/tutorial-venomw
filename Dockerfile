FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY public/ /usr/share/nginx/html/public/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
