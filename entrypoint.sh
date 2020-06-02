#!/bin/sh

/app/vendor/bin/rector $*
RETVAL=$?
echo "::set-output name=exit_code::${RETVAL}"
exit $RETVAL
