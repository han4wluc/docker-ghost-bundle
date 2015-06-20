#!/bin/bash

docker run --name changethiscontainername \
  -p changehostport:2368 \
  -e VIRTUAL_HOST=changethisthostname.de \
  -e NODE_ENV=production \
  -v $PWD/content/themes:/usr/src/ghost/content/themes \
  -v $PWD/content/apps:/usr/src/ghost/content/apps \
  -v $PWD/content/images:/usr/src/ghost/content/images \
  -v $PWD/content/data:/usr/src/ghost/content/data \
  -v $PWD/config:/var/lib/ghost \
  ghost
