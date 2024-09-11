#!/bin/bash

# Empty string check: from SH to BASH.
#   Check README for details.
sed -i 's/\[ -s $UNAME == "" \]/[ -z "$UNAME" ]/' BUILD.SH

# Include any missing <time.h>.
#   Check README for details.
sed -i '1i #include <time.h>' Library/Implementation/HTAccess.c
sed -i '1i #include <time.h>' Library/Implementation/HTFTP.c
sed -i '1i #include <time.h>' Daemon/Implementation/HTSUtils.c

exit 0
