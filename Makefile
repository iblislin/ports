all:

c-blosc:
	# shar `find ./archivers/c-blosc` > c-blosc.shar
	rsync -va --progress ./archivers/c-blosc /usr/ports/archivers/

libwebsockets:
	rsync -va --progress ./net/libwebsockets /usr/ports/net/

openlibm:
	make -C ./math/openlibm clean
	rsync -va --progress ./math/openlibm/ /usr/ports/math/openlibm

mosquitto:
	rsync -va --progress ./net/mosquitto /usr/ports/net/

libsvm:
	rsync -va --progress ./science/libsvm /usr/ports/science/
