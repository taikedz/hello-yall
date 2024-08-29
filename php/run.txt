A simple way to test this is by using Podman, a rootless docker alternative: <https://podman.io/docs/installation>

On Windows, use WSL (the Windows Subsystem for Linux) , and install podman within that environment.

In the current folder, run

```sh
podman run --rm -p 8090:80 -v "$PWD:/var/www/html" php:7.2-apache
```

And then go to <http://localhost:8090/hey.php?Sam=Stockholm&Jay=Johannesburg&Charlie=Chile> for example
