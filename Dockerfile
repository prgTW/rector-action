ARG RECTOR_VERSION=0.7.21
FROM rector/rector:$RECTOR_VERSION
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
