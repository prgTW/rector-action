#!/bin/sh -l

sh -c "/usr/local/bin/rector $*"
RETVAL=$?
echo "::set-output name=exit_code::${RETVAL}"
