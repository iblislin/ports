PORTSDIR=/usr/ports
RSYNC_CMD=rsync
RSYNC_FLAGS=-va --progress --delete

all:

c-blosc:
	${RSYNC_CMD} ${RSYNC_FLAGS} ./archivers/c-blosc ${PORTSDIR}/archivers/

c-blosc-writeback:
	${RSYNC_CMD} ${RSYNC_FLAGS} ${PORTSDIR}/archivers/c-blosc ./archivers/

libwebsockets:
	${RSYNC_CMD} ${RSYNC_FLAGS} ./net/libwebsockets ${PORTSDIR}/net/

openlibm:
	${RSYNC_CMD} ${RSYNC_FLAGS} ${PORTSDIR}/math/openlibm

mosquitto:
	${RSYNC_CMD} ${RSYNC_FLAGS} ./net/mosquitto ${PORTSDIR}/net/

libsvm:
	${RSYNC_CMD} ${RSYNC_FLAGS} ./science/libsvm ${PORTSDIR}/science/
