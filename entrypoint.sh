#!/bin/sh -l

/usr/local/bin/rector "$*"
RETVAL=$?
echo "::set-output name=exit_code::${RETVAL}"
