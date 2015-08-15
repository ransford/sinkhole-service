# sinkhole-service

Minimal Debian/Raspbian package that persistently listens on a TCP port and
discards all data sent to it.

The listener runs `nc -kl $PORT`.

# Configuration

The port on which to listen is the only variable; change it in `/etc/default/sinkhole-service`.

# Starting and Stopping

The service starts at installation and survives reboots.  Start and stop as you would any service:

    $ sudo /etc/init.d/sinkhole-service stop
    $ sudo /etc/init.d/sinkhole-service start

# Packaging

    $ $EDITOR debian/changelog
    $ dpkg-buildpackage -us -uc -I.git
