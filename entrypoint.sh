#!/bin/sh -l

sh -c "php -v"
sh -c "/rector/bin/rector --version"
sh -c "/rector/bin/rector $*"
RETVAL=$?
echo "::set-output name=exit_code::${RETVAL}"
