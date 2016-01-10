# mahiso/duplicity-backup
Run [duplicity-backup](https://github.com/mahiso/duplicity-backup/) in a Docker container
to backup the docker host.

## Configuration
### Clone the repository
Clone the repository to your local host.
<pre><code>
$ git clone https://github.com/mahiso/docker-duplicity-backup.git
</code></pre>

### Configure duplicity-backup
The duplicity.backup image will use configuration file <code>backup_var/duplicity-backup.conf</code>. To create it,
copy <code>duplicity-backup.conf.example</code> to <code>duplicity-backup.conf</code> and edit it to meet your needs.
<pre><code>
$ cd docker-duplicity-backup/backup_var
$ cp duplicity-backup.conf.example duplicity-backup.conf
$ vi duplicity-backup.conf
</code></pre>

### Configure gsutil
If Google Cloud Storage is used then configure gsutil.
<pre><code>
$ ./duplicity-backup.sh gsutil config
</code></pre>

The configuration is stored in file <code>backup_var/boto.cfg</code>.

## Backup and Restore
Call <code>./duplicity-backup.sh [options]</code> to do it.

Dockerized duplicity-backup is used in same way as without running in a docker container. But one exception: The config file is hard-coded in containers entry point. For all other options, find some [Examples](https://github.com/mahiso/duplicity-backup#usage-examples) in duplicity-backup README.

To restore to host, prefix local path with /SRC.
Example:
<pre><code>
$ ./duplicity-backup.sh --restore-file home/joe/file.txt /SRC/home/joe/file.txt
</code></pre>

## Build
The image is build using my clone of [Zertrin's duplicity-backup](https://github.com/zertrin/duplicity-backup).
If you like to use Zertrin's, change the download url in Dockerfile and build your own image.
<pre><code>
$ cd docker-duplicity-backup
$ docker build -t="mahiso/duplicity-backup" .
</code>
</pre>
