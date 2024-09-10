I believe, the logs of this server are very interesting in themselves !

You can get them by typing :

```
sudo docker logs cern-httpd-docker-cern-httpd-1
```

An example follows below :

```
............ This is CERN-HTTPD, version 3.0A, using libwww version 2.17
ServerRoot.. /var/www
ServerType.. StandAlone
DNS-lookup.. Off
Pass........ "/*" --> "/var/www/*"
No error logging
HostName.... gethostname says `b04f1c3b6b8b'
HostName.... FQDN is `b04f1c3b6b8b(none)'
AutoRule.... Pass "/httpd-internal-icons/*" --> "/var/www/icons/*"
Automatic... icon initialization at `/var/www/icons/*'
AutoRule.... Pass "http://b04f1c3b6b8b(none)/httpd-internal-icons/*" --> "/var/www/icons/*"
Icon URL.... prefix is http://b04f1c3b6b8b(none)/httpd-internal-icons/
Icons....... should be in /var/www/icons/*
AddIcon..... BLANK => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/blank.xbm" ALT=""
AddIcon..... DIRECTORY => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/directory.xbm" ALT="DIR"
AddIcon..... PARENT => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/back.xbm" ALT="UP"
AddIcon..... UNKNOWN => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/unknown.xbm" ALT=""
AddIcon..... */* => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/unknown.xbm" ALT=""
AddIcon..... binary => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/binary.xbm" ALT="BIN"
AddIcon..... www/unknown => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/unknown.xbm" ALT=""
AddIcon..... text/* => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/text.xbm" ALT="TXT"
AddIcon..... image/* => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/image.xbm" ALT="IMG"
AddIcon..... video/* => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/movie.xbm" ALT="MOV"
AddIcon..... audio/* => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/sound.xbm" ALT="AU"
AddIcon..... compress => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/compressed.xbm" ALT="CMP"
AddIcon..... gzip => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/compressed.xbm" ALT="GZP"
AddIcon..... application/x-gopher-index => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/index.xbm" ALT="IDX"
AddIcon..... application/x-gopher-cso => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/index2.xbm" ALT="CSO"
AddIcon..... application/x-gopher-telnet => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/telnet.xbm" ALT="TEL"
AddIcon..... application/x-gopher-duplicate => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/unknown.xbm" ALT="DUP"
AddIcon..... application/x-gopher-tn3270 => SRC="http://b04f1c3b6b8b(none)/httpd-internal-icons/unknown.xbm" ALT="TN"
Default..... port 80 for standalone server
ServerType.. standalone (turning on forking)
Daemon...... Parsed address as port 80, inet 0.0.0.0
IP.......... Opened socket number 3
Daemon...... Master socket(), bind() and listen() all OK
PidFile..... /var/www/httpd-pid
ServerLoop.. Unix standalone
Disabling... gc [caching not enabled either] #1
Gc.......... disabled altogether
No timeout.. not doing select()
Daemon...... accepting connection...
Accepted.... new socket 4
StandAlone.. Doing fork()
HTHandle.... fork() succeeded
Gc.......... disabled altogether
No timeout.. not doing select()
Daemon...... accepting connection...
Child....... I'm alive
Linger...... no longer set by default
Reading..... socket 4 from host 172.22.0.1
User-Agent.. Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:130.0) Gecko/20100101 Firefox/130.0
Language.... en-US (q=1.00)
Language.... en (q=0.50)
Encoding.... gzip (q=1.00)
Encoding.... deflate (q=1.00)
Encoding.... br (q=1.00)
Encoding.... zstd (q=1.00)
HTSimplify.. `/asdfaf' into
............ `/asdfaf'
Pass........ rule matched "/asdfaf" -> "/var/www/asdfaf"
Passing..... "/var/www/asdfaf"
AutoMulti... because can't stat "/var/www/asdfaf" (errno 2)
Multi....... Possibilities for "/var/www/asdfaf"

CONTENT-TYPE  LANGUAGE  ENCODING  QUALITY  FILE

Ranking.....

RANK QUALITY CONTENT-TYPE         LANGUAGE ENCODING    FILE

AutoMulti... failed -- giving up
AuthCheck... Translated path: "/var/www/asdfaf" (method: GET)
AccessOk.... No protect rule nor ACL
AA.......... check returned 404
Translated.. "/var/www/asdfaf"
Returning... ERROR 404:
 ** Not found - file doesn't exist or is read protected [even tried multi]
ERROR....... [10/Sep/2024:00:29:45 +0000] /asdfaf 
HTTP header. length: 189 bytes
............ Headers for the client
HTTP/1.0 404 Not found - file doesn't exist or is read protected [even tried multi]
Server: CERN/3.0A
Date: Tue, 10 Sep 2024 00:29:45 GMT
Content-Type: text/html
Content-Length: 232

............ End of headers
Socket...... 4 disconnected by peer
Child....... exiting with status 0
Parent...... child pid 7 has finished
Accepted.... new socket 4
StandAlone.. Doing fork()
HTHandle.... fork() succeeded
Gc.......... disabled altogether
No timeout.. not doing select()
Daemon...... accepting connection...
Child....... I'm alive
Linger...... no longer set by default
Reading..... socket 4 from host 172.22.0.1
User-Agent.. curl/8.5.0
HTSimplify.. `/' into
............ `/'
Pass........ rule matched "/" -> "/var/www/"
Passing..... "/var/www/"
Welcome..... "/var/www/index.html"
Content-Length 2217
Last-Modified Thu, 03 Dec 1992 08:37:20 GMT
Searching... for suffix 1: ".html"
AuthCheck... Translated path: "/var/www/index.html" (method: GET)
AccessOk.... No protect rule nor ACL
AA.......... check returned 200
Translated.. "/var/www/index.html"
SysInfo..... nobody means user (nobody:x:65534:65534:...)
SysInfo..... nogroup means group (nogroup:x:65534:...)
Doing... setgid(65534) and setuid(65534)
HTHandle.... method GET
Content-Length 2217
Last-Modified Thu, 03 Dec 1992 08:37:20 GMT
FindAnchor.. 0x5f5c4ef5f0c0 with hash 47 and address `/' created
HTAccess.... Loading document /
LoadFile.... Looking for `/var/www/index.html'
Local filename is "/var/www/index.html"
Searching... for suffix 1: ".html"
HTLoadFile.. Accessing local file system.
HTLoadFile.. Opened `/var/www/index.html' on local file system
File mode is 0100664, uid=0, gid=0. My uid=65534, 1 groups ( 65534)
	File is not editable.
StreamStack. Constructing stream stack for text/html to www/present
Ok.......... Content-type text/html
HTTP header. length: 182 bytes
............ Headers for the client
HTTP/1.0 200 Document follows
Server: CERN/3.0A
Date: Tue, 10 Sep 2024 10:58:18 GMT
Content-Type: text/html
Content-Length: 2217
Last-Modified: Thu, 03 Dec 1992 08:37:20 GMT

............ End of headers
Already..... known content-length: 2217
HTAccess.... `/' has been accessed.
Socket...... 4 disconnected by peer
Child....... exiting with status 0
Parent...... child pid 8 has finished
Accepted.... new socket 4
StandAlone.. Doing fork()
HTHandle.... fork() succeeded
Gc.......... disabled altogether
No timeout.. not doing select()
Daemon...... accepting connection...
Child....... I'm alive
Linger...... no longer set by default
Reading..... socket 4 from host 172.22.0.1
User-Agent.. curl/8.5.0
HTSimplify.. `/' into
............ `/'
Pass........ rule matched "/" -> "/var/www/"
Passing..... "/var/www/"
Welcome..... "/var/www/index.html"
Content-Length 2217
Last-Modified Thu, 03 Dec 1992 08:37:20 GMT
Searching... for suffix 1: ".html"
AuthCheck... Translated path: "/var/www/index.html" (method: HEAD)
AccessOk.... No protect rule nor ACL
AA.......... check returned 200
Translated.. "/var/www/index.html"
SysInfo..... nobody means user (nobody:x:65534:65534:...)
SysInfo..... nogroup means group (nogroup:x:65534:...)
Doing... setgid(65534) and setuid(65534)
HTHandle.... method HEAD
Searching... for suffix 1: ".html"
HTTP header. length: 182 bytes
............ Headers for the client
HTTP/1.0 200 Document follows
Server: CERN/3.0A
Date: Tue, 10 Sep 2024 10:59:09 GMT
Content-Type: text/html
Content-Length: 2217
Last-Modified: Thu, 03 Dec 1992 08:37:20 GMT

............ End of headers
Socket...... 4 disconnected by peer
Child....... exiting with status 0
Parent...... child pid 9 has finished

```