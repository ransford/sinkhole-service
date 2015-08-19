sinkhole: sinkhole.c
	$(CC) -Wall -o $@ $<

clean:
	$(RM) sinkhole

install: sinkhole
	install sinkhole debian/sinkhole-service/usr/bin
