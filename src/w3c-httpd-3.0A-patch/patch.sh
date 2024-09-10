#!/bin/bash

# Empty string check: from SH to BASH.
#   Check README for details.
sed -i 's/\[ -s $UNAME == "" \]/[ -z "$UNAME" ]/' BUILD.SH

# Include any missing <time.h>.
#   Check README for details.
sed -i '1i #include <time.h>' Library/Implementation/HTAccess.c
sed -i '1i #include <time.h>' Library/Implementation/HTFTP.c
sed -i '1i #include <time.h>' Daemon/Implementation/HTSUtils.c

# Custom types for Linux sockets.
#   Check README for details.
sed -i 's/int addr_size/socklen_t addr_size/g' Library/Implementation/HTFTP.c
sed -i 's/int len/socklen_t len/g' Library/Implementation/HTTCP.c
sed -i 's/int soc_addrlen/socklen_t soc_addrlen/g' Library/Implementation/HTTCP.c

# Remove sys_errlist.
#   Check README for details.
sed -i '/extern char \*sys_errlist\[\];/d' Library/Implementation/HTTCP.c

# Update Makefile.include for Linux to include -lcrypt.
#   Check README for details.
sed -i 's/LFLAGS =/LFLAGS = -lcrypt/' All/linux/Makefile.include

exit 0
