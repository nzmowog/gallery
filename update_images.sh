#!/usr/bin/bash
#chcon -Rt svirt_sandbox_file_t images/
#chcon -Rt svirt_sandbox_file_t output/

sudo docker run -t -v `pwd`/images:/input -v `pwd`/output:/output -v `pwd`/../theme-flow/theme:/theme -u $(id -u):$(id -g) thumbsupgallery/thumbsup thumbsup --input /input --output /output --theme-path /theme


