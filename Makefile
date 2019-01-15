all:

c-blosc:
	# shar `find ./archivers/c-blosc` > c-blosc.shar
	rsync -va --progress --delete ./archivers/c-blosc /usr/ports/archivers/

libwebsockets:
	rsync -va --progress --delete ./net/libwebsockets /usr/ports/net/

openlibm:
	make -C ./math/openlibm clean
	rsync -va --progress --delete ./math/openlibm/ /usr/ports/math/openlibm

mosquitto:
	rsync -va --progress --delete ./net/mosquitto /usr/ports/net/

libsvm:
	rsync -va --progress --delete ./science/libsvm /usr/ports/science/
