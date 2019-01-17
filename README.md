# SnipeIT Asset Mangement
## Built with docker-compose

A docker-compose file to run the [SnipeIT Asset Management](https://github.com/snipe/snipe-it) application.

Please be sure to read their [help docs](https://snipe-it.readme.io/docs/introduction) and specifically the [Docker](https://snipe-it.readme.io/docs/docker) page.

You will need to generate an application key to paste into your docker-compose file.

```shell
docker run --rm snipe/snipe-it
```

You will also need to have your SSL certifcate in the form of a CRT file and associated key file. If your key file is password protected, use the openssl tool to remove it.

```shell
openssl rsa -in yourCertWithPassword.key -out yourCertWithoutPassword.key
```

Add the file path to the certificates (if they're already on the server elsewhere, otherwise `scp` them to your working directory) to the `setup.sh` file, then run it. Ensure you have filled out **all** of the environment variables in docker-compose.yml. 

## I repeat: **ALL** of the environment variables

Then run `docker-compose up` and you will be off to the races. If everything is running fine, run `docker-compose up -d` instead.
