# jdownloader2 with filebot

* clone git submodules: `git submodule update --init --recursive`
* build docker images: `docker-compose build`
* copy [jdownloader.env.EXAMPLE](jdownloader.env.EXAMPLE) to `jdownloader.env` and adapt the config values
* Make sure to adjust the filebot config and all environment variables in [docker-compose.yml](docker-compose.yml) according to your needs
* Activate the filebot license within the filebot container
* Check if the [run-filebot.sh](run-filebot.sh) suits for you. You can easily test it by setting the env variable $ACTION=test
* run: `docker-compose up -d`
* Check the logs of jdownloader if it successfully came up: `docker-compose logs -f app`
* Restart jdownloader
  * `docker-compose stop`
  * `docker-compose up -d`
* login on [my.jdownloader.org](https://my.jdownloader.org)
* happy downloading :-)
