# nissy-docker

Dockerfile definition to run NISSY via a docker container, with pruning tables bundled in the image. See https://nissy.tronto.net/⁠ for more infoo

Make sure to run this image using the interactive shell:
```shell
docker build -t nissy:latest .
docker run --name nissy --rm -it nissy
```
