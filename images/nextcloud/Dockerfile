FROM nextcloud:33

RUN apt-get update && apt-get -y upgrade && apt-get -y install ffmpeg && apt-get -y autoremove && rm -rf /var/lib/apt/lists/*

# https://github.com/nextcloud/docker/issues/763
RUN touch /usr/local/etc/php/conf.d/redis-session.ini && chown 33:33 /usr/local/etc/php/conf.d/redis-session.ini && chmod 770 /usr/local/etc/php/conf.d/redis-session.ini
