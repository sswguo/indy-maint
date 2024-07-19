#### Guide for proxy tests

This is for the tests that using `wget` or `curl` to do requests through our proxy
There are different versions we need to cover, mainly for rhel 7, rhel 8 or even rhel 9, so we have prepared different images for this. 

## Build image (specific the tag accordingly)
`docker build . -t wget:ubi8` 

## Start container
```
docker run --add-host="localhost:<IP>" -d --name wget-ubi8 wget:ubi8 /bin/bash -c "echo 'Hello World'; tail -f /dev/null"
```

_NOTE_: with `--add-host` will allow us to access localhost from the container, for example, I start the proxy service in my laptop, and if I want to access that proxy
in the container, then I can set the `https_proxy` with localhost, as follows:
```
export https_proxy=http://build-12345678+tracking:password@localhost:8082
```

## Running tests in the container
```
wget -d --ca-certificate /tmp/cat.crt  -S https://zlib.net/fossils/zlib-1.2.13.tar.gz
```

_NOTE_: you can mount the certificate when building image, or you can make it during tests

```
cat /tmp/cat.crt >> /etc/pki/tls/certs/ca-bundle.crt
curl -v -O https://zlib.net/fossils/zlib-1.2.13.tar.gz
```
