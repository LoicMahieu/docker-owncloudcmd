
FROM          phusion/baseimage:0.9.15
MAINTAINER    Loic Mahieu "mahieuloic@gmail.com"

RUN           sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list"
RUN           curl -o /tmp/Release.key http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_14.04/Release.key
RUN           apt-key add - < /tmp/Release.key
RUN           apt-get -y update
RUN           apt-get install -y owncloud-client
RUN           apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME        ["/owncloud"]

ENTRYPOINT    ["/usr/bin/owncloudcmd"]
