# Base image.
FROM python:2.7

# Create code folder.
RUN mkdir /var/www
RUN mkdir /var/envs


# Set working dir.
WORKDIR /var/www


# Add python requirements file.
ADD requirements.txt /var/www


# Install required programs.
RUN pip install -r requirements.txt
RUN apt-get update
RUN apt-get install -y \
    gettext \
    nginx \
    vim

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN rm /etc/nginx/sites-enabled/default
RUN ln -s /var/www/conf/nginx-app.conf /etc/nginx/sites-enabled/

# Add source code.
ADD . /var/www/

# Run script file.
CMD ./run.sh
