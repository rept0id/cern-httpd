#!/bin/bash



# Custom types for Linux sockets.
#   Check README for details.
sed -i 's/int addr_size/socklen_t addr_size/g' Library/Implementation/HTFTP.c
sed -i 's/int len/socklen_t len/g' Library/Implementation/HTTCP.c
sed -i 's/int soc_addrlen/socklen_t soc_addrlen/g' Library/Implementation/HTTCP.c

# Remove sys_errlist.
#   Check README for details.
sed -i '/extern char \*sys_errlist\[\];/d' Library/Implementation/HTTCP.c

exit 0
