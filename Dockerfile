FROM nginx:latest

# Append "daemon off;" to the beginning of the configuration
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

# Copy an index file
COPY ./index.html /usr/share/nginx/html/

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports
EXPOSE 80

