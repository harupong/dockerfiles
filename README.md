# rclone static binary builder

Docker image to statically build [rclone - rsync for cloud storage](http://rclone.org/).

# How to build the binary

    docker run --rm -v ${PWD}:/output harupong/rclone-static

This will build and copy a statically-built `rclone` binary to your $PWD.

I use this binary for Docker containers based on Alpine Linux, as `rclone` official binary for Linux cannot be executed on this distro due to [this issue](http://www.blang.io/posts/2015-04_golang-alpine-build-golang-binaries-for-alpine-linux/).

# How to make use of the binary

If you have a working `.rclone.conf` file on your Docker host, execute

    docker run -it -v /path/to/rclone:/usr/bin/rclone -v /path/to/.rclone.conf:/root/.rclone.conf <Docker image name/tag> /bin/sh

and you can use `rclone` inside your container with all the settings available.

If not, then execute the following:

    docker run -it -v /path/to/rclone:/usr/bin/rclone <Docker image name/tag> /bin/sh

Once you're inside the container, `rclone config` to open the rclone config wizard. It will create new `rclone.file` for you.
