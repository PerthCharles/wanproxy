.if !defined(TOPDIR)
.error "TOPDIR must be defined."
.endif

.PATH: ${TOPDIR}/io

SRCS+=	file_descriptor.cc
SRCS+=	io_system.cc
SRCS+=	pipe_link.cc
SRCS+=	pipe_null.cc
SRCS+=	pipe_sink.cc
SRCS+=	pipe_pair_echo.cc
SRCS+=	pipe_simple.cc
SRCS+=	socket.cc
SRCS+=	splice.cc
SRCS+=	splice_pair.cc
SRCS+=	unix_client.cc
SRCS+=	unix_server.cc

.if ${OSNAME} == "SunOS"
# Required for sockets.
LDADD+=		-lnsl
LDADD+=		-lsocket
.endif

IO_REQUIRES=	event
