PORTSDIR=/usr/ports

all:

c-blosc:
	rsync -va --progress --delete ./archivers/c-blosc ${PORTSDIR}/archivers/

libwebsockets:
	rsync -va --progress --delete ./net/libwebsockets ${PORTSDIR}/net/

openlibm:
	make -C ./math/openlibm clean
	rsync -va --progress --delete ./math/openlibm/ ${PORTSDIR}/math/openlibm

mosquitto:
	rsync -va --progress --delete ./net/mosquitto ${PORTSDIR}/net/

libsvm:
	rsync -va --progress --delete ./science/libsvm ${PORTSDIR}/science/
