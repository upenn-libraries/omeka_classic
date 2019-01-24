FROM php:5.6-apache

MAINTAINER Katherine Lynch <katherly@upenn.edu>

ENV OMEKA_VERSION 2.6

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
        build-essential \
        ca-certificates \
        git \
        imagemagick \
        unzip \
        vim \
        zlib1g \
        zlib1g-dev && \
        docker-php-ext-install exif mbstring mysqli pdo pdo_mysql zip

COPY files/ini/${OMEKA_VERSION}/php.ini.example /usr/local/etc/php/conf.d/php.ini

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

WORKDIR /var/www/html

ADD https://github.com/omeka/Omeka/releases/download/v${OMEKA_VERSION}/omeka-${OMEKA_VERSION}.zip omeka-${OMEKA_VERSION}.zip

RUN unzip -q omeka-${OMEKA_VERSION}.zip && mv omeka-${OMEKA_VERSION}/* /var/www/html/.

RUN rm -r omeka-${OMEKA_VERSION}/

RUN rm omeka-${OMEKA_VERSION}.zip

RUN mkdir -p /var/www/html/files

RUN mkdir -p /var/www/html/files/thumbnails

ADD files/ini/${OMEKA_VERSION}/.htaccess.example /var/www/html/.htaccess

ADD files/ini/${OMEKA_VERSION}/config.ini.example /var/www/html/application/config/config.ini

RUN chmod -R 755 files

RUN chown -R www-data:www-data files

RUN chown www-data:www-data application/config/config.ini

RUN rm -rf /var/www/html/themes/* && rm /var/www/html/db.ini

RUN rm -rf /var/www/html/plugins/ExhibitBuilder 

COPY files/themes/${OMEKA_VERSION}/\*.zip /var/www/html/themes/

COPY files/plugins/${OMEKA_VERSION}/\*.zip /var/www/html/plugins/

RUN unzip /var/www/html/themes/\*.zip -d /var/www/html/themes && unzip /var/www/html/plugins/\*.zip -d /var/www/html/plugins

RUN rm /var/www/html/themes/*.zip && rm /var/www/html/plugins/*.zip

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN a2enmod rewrite && service apache2 restart
