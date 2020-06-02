FROM php:7.4-alpine
RUN apk add --no-cache \
	wget \
	git \
	libzip-dev \
    && docker-php-ext-install -j$(nproc) zip
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
