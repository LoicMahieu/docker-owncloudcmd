
# docker-owncloudcmd

Docker image for `owncloudcmd`: command line client that can be used to synchronize [ownCloud](http://owncloud.org/).

## Usage

Pull the automated build

```
docker pull loicmahieu/docker-owncloudcmd
```

Run it

```
docker run --rm -t owncloudcmd [OPTION] <source_dir> <server_url>
```

See Owncloud documentation: [owncloud-commandline-client](http://doc.owncloud.org/desktop/1.7/advancedusage.html#owncloud-commandline-client)


## Build

```
docker build --rm -t owncloudcmd .
```
