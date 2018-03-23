FROM php:5.6-apache

MAINTAINER Katherine Lynch <katherly@upenn.edu>

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
        build-essential \
        ca-certificates \
        imagemagick \
        unzip \
        vim \
        zlib1g \
        zlib1g-dev && \
        docker-php-ext-install exif mbstring mysqli pdo pdo_mysql zip && \
        apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY files/php.ini.example /etc/php5/apache2/conf.d/php.ini

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

WORKDIR /var/www/html

ADD https://github.com/omeka/Omeka/releases/download/v2.6/omeka-2.6.zip omeka-2.6.zip

RUN unzip omeka-2.6.zip && mv omeka-2.6/* /var/www/html/.

RUN rm -r omeka-2.6/

RUN rm omeka-2.6.zip

RUN mkdir -p /var/www/html/files

RUN mkdir -p /var/www/html/files/thumbnails

ADD files/.htaccess.example /var/www/html/.htaccess

ADD files/db.ini.example /var/www/html/db.ini

ADD files/config.ini.example /var/www/html/application/config/config.ini

RUN chmod -R 755 files

RUN chmod -R 640 db.ini

RUN chown -R www-data:www-data files

RUN chown www-data:www-data db.ini

RUN chown www-data:www-data application/config/config.ini

RUN apt-get clean && rm -rf /var/lib/apt/lists/* 

RUN a2enmod rewrite && service apache2 restart
