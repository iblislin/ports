PORTSDIR=/usr/ports
RSYNC_CMD=rsync
RSYNC_FLAGS=-va --progress --delete

all:

c-blosc:
	${RSYNC_CMD} ${RSYNC_FLAGS} ./archivers/c-blosc ${PORTSDIR}/archivers/

c-blosc-writeback:
	${RSYNC_CMD} ${RSYNC_FLAGS} ${PORTSDIR}/archivers/c-blosc ./archivers/

libwebsockets:
	rsync -va --progress --delete ./net/libwebsockets ${PORTSDIR}/net/

openlibm:
	make -C ./math/openlibm clean
	rsync -va --progress --delete ./math/openlibm/ ${PORTSDIR}/math/openlibm

mosquitto:
	rsync -va --progress --delete ./net/mosquitto ${PORTSDIR}/net/

libsvm:
	rsync -va --progress --delete ./science/libsvm ${PORTSDIR}/science/
