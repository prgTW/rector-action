#!/bin/sh

/rector/bin/rector --version
/rector/bin/rector $*
RETVAL=$?
echo "::set-output name=exit_code::${RETVAL}"
