FROM nginx:latest
RUN mkdir -p /var/www/html
COPY nginx.conf /etc/nginx/conf.d/web-service.conf
COPY generate_html_page.sh /generate_html_page.sh
RUN chmod +x /generate_html_page.sh
EXPOSE 8080
CMD ["/generate_html_page.sh"]
