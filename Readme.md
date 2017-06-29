# Node image with Chrome Headless

Run chrome headless with

```
chromium-browser --headless --disable-gpu
```

## Starting the docker container

Chromium needs special security permissions because of its sandbox mode. Use the
`chrome.json` [seccomp profile](https://github.com/jessfraz/dotfiles/blob/master/etc/docker/seccomp/chrome.json) by [Jessie Frazelle](https://github.com/jessfraz). It's part of this
repository, but needs to be on the docker host.

```
docker run --rm -ti --security-opt seccomp:$(pwd)/chrome.json …
```
