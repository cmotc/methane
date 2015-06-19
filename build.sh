#/bin/sh

#Re-Link the Tox VAPI from it's directory
#rm -f src/vapi/tox-1.0.vapi
#wget https://raw.githubusercontent.com/cmotc/tox-vapi/master/tox-1.0.vapi \
#-O src/vapi/tox-1.0.vapi

rm -rfv bin/
mkdir -p bin

valac -o bin/methane --vapidir "src/vapi" \
--pkg gee-1.0 \
#src/auth/*.vala \
#src/coin/*.vala \
#src/main/*.vala \
#src/torrent/*.vala \
#src/tox/*.vala \
src/UI/*.vala \
src/main.vala 