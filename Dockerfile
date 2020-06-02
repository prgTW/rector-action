FROM php:7.4-alpine
ENV RECTOR_VERSION ${RECTOR_VERSION:-dev-master}

RUN addgroup -S -g 1000 rector && adduser -S -g rector -u 1000 rector

RUN apk add --no-cache \
	libzip-dev \
    && docker-php-ext-install -j$(nproc) zip

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN mkdir -p /app && chown -R rector:rector /app
WORKDIR /app
USER rector

COPY --chown=rector:rector composer.json /app/
RUN COMPOSER_CACHE_DIR=/dev/null /usr/bin/composer install
RUN COMPOSER_CACHE_DIR=/dev/null /usr/bin/composer require --dev rector/rector-prefixed:${RECTOR_VERSION}

COPY --chown=rector:rector entrypoint.sh entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
