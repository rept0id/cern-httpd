# w3c-httpd-3.0A-patch

## Patch Changes :

### Empty string check: from `SH` to `BASH`.
    
The script was writen for `SH` and not for `BASH` shell, which came later.

In more modern shells like `BASH`, `==` is supported within `[[ ... ]]` but not in `[ ... ]`. 

The modern `-z` operator is used to check if a string is empty.

### Include any missing `<time.h>`.

Modern compilers and linkers often follow stricter rules for linking libraries and do not include additional libraries unless explicitly specified.

### Custom types for variables related to Linux sockets.

They would use `int` type for everything back then ! 

Today things are more specialized and there are custom types for variables related to Linux sockets, like `socklen_t`.

### Remove `sys_errlist`.

In more recent systems and libraries, `sys_errlist` buffer array has been replaced by `strerror` and `errno` buffer outputs.

### Update Makefile.include for Linux to include `-lcrypt`.

Modern compilers and linkers often follow stricter rules for linking libraries and do not include additional libraries unless explicitly specified.