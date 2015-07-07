(cd content/themes; git clone https://github.com/TryGhost/Casper.git casper)

docker run --name website_name \
  -p website_port:2368 \
  -e VIRTUAL_HOST=website_url \
  -e NODE_ENV=production \
  -v $PWD/content/themes:/usr/src/ghost/content/themes \
  -v $PWD/content/apps:/usr/src/ghost/content/apps \
  -v $PWD/content/images:/usr/src/ghost/content/images \
  -v $PWD/content/data:/usr/src/ghost/content/data \
  -v $PWD/config:/var/lib/ghost \
  -d ghost
