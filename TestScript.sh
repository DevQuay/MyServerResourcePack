7z u ./CustomPaintings.zip ./CustomPaintings/*
git commit -a -m "Server Started, Updating SHA1"
git push
newhash=$(sha1sum ./CustomPaintings.zip|cut -f1 -d" ")
sudo sed -i.bake 's/resource-pack-sha1=.*/resource-pack-sha1='"$newhash"'/' /srv/forge-1.14.4/server.properties >/home/floyd/Desktop/servar.txt
forge-1.14.4d start
forge-1.14.4d console