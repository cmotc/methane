#/bin/sh

#Re-Link the Tox VAPI from it's directory
#rm -f src/vapi/tox-1.0.vapi
#wget https://raw.githubusercontent.com/cmotc/tox-vapi/master/tox-1.0.vapi \
#-O src/vapi/tox-1.0.vapi

rm -rfv bin/
mkdir -p bin

cp -Rv assets/ bin/assets

valac -o bin/methane --vapidir "src/vapi" \
--pkg gee-1.0 --pkg gmodule-2.0 --pkg gtk+-3.0 \
src/main.vala \
src/UI/*.vala \
#-C \
#src/auth/*.vala \
#src/coin/*.vala \
#src/main/*.vala \
#src/torrent/*.vala \
#src/tox/*.vala 
