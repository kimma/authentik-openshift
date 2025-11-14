#!/bin/bash

for i in website web tests media manage.py blueprints authentik geoip lifecycle; do
  chgrp -R 0 /$i
  chmod -R g=u /$i
done
