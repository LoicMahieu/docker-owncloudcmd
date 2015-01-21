
# docker-owncloudcmd

Docker image for `owncloudcmd`: command line client that can be used to synchronize [ownCloud](http://owncloud.org/).

## Usage

Pull the automated build from [registry](https://registry.hub.docker.com/u/loicmahieu/owncloudcmd):

```
docker pull loicmahieu/owncloudcmd
```

Run it

```
docker run \
  --rm \
  -t loicmahieu/owncloudcmd \
  [OPTION] \
  <source_dir> \
  <server_url>
```

See Owncloud documentation: [owncloud-commandline-client](http://doc.owncloud.org/desktop/1.7/advancedusage.html#owncloud-commandline-client)

### Sync example

```
docker run \
  --rm \
  -v /home/loic/owncloud:/owncloud \
  -t loicmahieu/owncloudcmd \
  --trust \
  /owncloud \
  ownclouds://loic:password@owncloud.loic.com/owncloud/remote.php/webdav
```


## Build

```
docker build --rm -t owncloudcmd .
```
