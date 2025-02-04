cd /meshtastic
source bin/activate
cd firmware
git submodule update --init --recursive --remote
git pull
cd lib/device-ui/
git pull
cd ../..
/root/.platformio/penv/bin/pio run -e t-deck-tft
mkdir /export ; cp -r /meshtastic/firmware/.pio/build/t-deck-tft/ /export
