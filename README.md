# meshtastic-tdeck-tft-dockerfile
### Fully automated compilation of t-deck-tft branch of meshtastic firmware with Device-UI (Fancy-UI)
Dedicated to LILYGO T-deck device.<br>
Run container for the first time:<br>
`docker run -it --name tdeck -v ${PWD}:/export joyel/meshtastic-tdeck-tft`
<br><br>
Start the container again once already created:<br>
`docker start -i tdeck`

To update image:
`docker pull joyel/meshtastic-tdeck-tft`