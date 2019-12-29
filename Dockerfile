FROM php:7.4-alpine

ENV RECTOR_VERSION 0.6.4

RUN wget https://github.com/rectorphp/rector-prefixed/archive/v$RECTOR_VERSION.tar.gz -O rector.tar.gz \
	&& tar -C /usr/local/bin -xzvf rector.tar.gz rector-prefixed-$RECTOR_VERSION/rector \
    && rm rector.tar.gz

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
