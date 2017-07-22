all:

c-blosc:
	shar `find ./archivers/c-blosc` > c-blosc.shar
	rsync -va --progress ./archivers/c-blosc /usr/ports/archivers/

libwebsockets:
	rsync -va --progress ./net/libwebsockets /usr/ports/net/
