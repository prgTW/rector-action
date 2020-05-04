#!/bin/sh

/rector/bin/rector $*
RETVAL=$?
echo "::set-output name=exit_code::${RETVAL}"
