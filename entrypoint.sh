#!/bin/sh

set -e
set -eo pipefail

RECTOR_VERSION=${RECTOR_VERSION:-master}

# Install wanted Rector version
WORKDIR=$(pwd)
mkdir -p /tmp/rector &&
  wget "https://github.com/rectorphp/rector-prefixed/archive/${RECTOR_VERSION}.tar.gz" -O /tmp/rector.tar.gz &&
  tar --strip-components 1 -C /tmp/rector -xzvf /tmp/rector.tar.gz &&
  cp /tmp/rector/rector /usr/local/bin/ &&
  rm -rf /tmp/rector.tar.gz /tmp/rector
cd "$WORKDIR"

/usr/local/bin/rector $*
RETVAL=$?
echo "::set-output name=exit_code::${RETVAL}"
exit $RETVAL
