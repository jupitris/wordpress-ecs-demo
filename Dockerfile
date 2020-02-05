FROM wordpress:latest

ENV TZ Asia/Tokyo
RUN echo "${TZ}" > /etc/timezone \
   && dpkg-reconfigure -f noninteractive tzdata

RUN apt-get update -y

ADD ./healthy.conf /etc/apache2/conf-available/healthy.conf
ADD ./healthy.html /var/www/html/healthy.html
