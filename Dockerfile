FROM mariadb:10.3

COPY docker-entrypoint.sh /usr/local/bin/
RUN rm -rf /docker-entrypoint.sh && ln -s /usr/local/bin/docker-entrypoint.sh / 
ENTRYPOINT ["docker-entrypoint.sh"]