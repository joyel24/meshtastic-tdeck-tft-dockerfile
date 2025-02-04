FROM "debian:stable-20250203"

RUN apt-get update && \
        apt-get install -y git wget python3-pip python3.11-venv libpython3-dev && \
        apt-get -qy autoremove
RUN wget -O get-platformio.py https://raw.githubusercontent.com/platformio/platformio-core-installer/master/get-platformio.py && python3 get-platformio.py

RUN bash -c "python3 -m venv meshtastic && cd meshtastic && source bin/activate && git clone --single-branch --recursive --branch tft-gui-work https://github.com/meshtastic/firmware.git && cd firmware && git submodule update --init --recursive --remote && cd lib/device-ui/ && git pull origin master && git checkout master && cd ../.. && /root/.platformio/penv/bin/pio run -e t-deck-tft"

ADD start.sh /
ENTRYPOINT ["/bin/bash", "/start.sh"]
