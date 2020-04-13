git commit -a -m "Server Started, Updating SHA1"
git push
7z u ./CustomPaintings.zip ./CustomPaintings/*              
sudo sed -i /srv/forge-1.14.4/server.properties "s/^resource-pack-sha1=(?:.*)$/resource-pack-sha1=$(sha1sum ./CustomPaintings.zip|cut -f1 -d' ')/m" /srv/forge-1.14.4/server.properties