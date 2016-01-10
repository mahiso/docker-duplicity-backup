# mahiso/duplicity
Run [duplicity-backup](https://github.com/mahiso/duplicity-backup/) in a Docker container 
to backup the docker host.

## Configuration

## Backup

## Restore

## Build
The image is build using my clone of [Zertrin's duplicity-backup](https://github.com/zertrin/duplicity-backup).
If you like to use Zertrin's, change the download url in Dockerfile.
<pre><code>
$ cd docker-duplicity-backup
$ docker build -t="mahiso/duplicity-backup" .
</code>
</pre>
