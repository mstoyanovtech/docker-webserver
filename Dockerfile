FROM nginx:latest
COPY nginx.conf /etc/nginx/sites-available/web-service.conf
RUN ln -s /etc/nginx/sites-available/web-service.conf /etc/nginx/sites-enabled/web-service.conf
COPY generate_html_page.sh /generate_html_page.sh
RUN chmod +x /generate_html_page.sh
EXPOSE 8080
CMD ["/generate_html_page.sh"]
