#!/bin/bash

#--------------------Create DATADIR folder
DATADIR=${HOME}
DATADIR=${DATADIR}/servdata
if [ ! -d  ${DATADIR} ]; then mkdir ${DATADIR}; fi

#--------------------Create homepage folder
if [ ! -d  ${DATADIR}/homepage ]; then mkdir ${DATADIR}/homepage; fi

#--------------------Update homepage config files
HOMECONF=${DATADIR}/homepage/config
if [ ! -d  ${HOMECONF} ]; then mkdir ${HOMECONF}; fi
if [ -f  ${HOMECONF}/bookmarks.yaml ]; then rm -f ${HOMECONF}/bookmarks.yaml; fi
if [ -f  ${HOMECONF}/docker.yaml ]; then rm -f ${HOMECONF}/docker.yaml; fi
if [ -f  ${HOMECONF}/services.yaml ]; then rm -f ${HOMECONF}/services.yaml; fi
if [ -f  ${HOMECONF}/settings.yaml ]; then rm -f ${HOMECONF}/settings.yaml; fi
if [ -f  ${HOMECONF}/widgets.yaml ]; then rm -f ${HOMECONF}/widgets.yaml; fi
cp configs/homepage/bookmarks.yaml ${HOMECONF}/bookmarks.yaml;
cp configs/homepage/docker.yaml ${HOMECONF}/docker.yaml;
cp configs/homepage/services.yaml ${HOMECONF}/services.yaml;
cp configs/homepage/settings.yaml ${HOMECONF}/settings.yaml;
cp configs/homepage/widgets.yaml ${HOMECONF}/widgets.yaml;

#--------------------Update homepage icons
HOMEICO=${DATADIR}/homepage/icons
if [ ! -d  ${HOMEICO} ]; then mkdir ${HOMEICO}; fi
if [ ! -f  ${HOMEICO}/home-assistant.png ]; then cp images/home-assistant.png ${HOMEICO}/home-assistant.png; fi
if [ ! -f  ${HOMEICO}/jellyfin.png ]; then cp images/jellyfin.png ${HOMEICO}/jellyfin.png; fi
#if [ ! -f  ${HOMEICO}/mainsail.png ]; then cp images/mainsail.png ${HOMEICO}/mainsail.png; fi
if [ ! -f  ${HOMEICO}/nextcloud.png ]; then cp images/nextcloud.png ${HOMEICO}/nextcloud.png; fi
if [ ! -f  ${HOMEICO}/proxmox.png ]; then cp images/proxmox.png ${HOMEICO}/proxmox.png; fi
#if [ ! -f  ${HOMEICO}/qbittorrent.png ]; then cp images/qbittorrent.png ${HOMEICO}/qbittorrent.png; fi
if [ ! -f  ${HOMEICO}/syncthing.png ]; then cp images/syncthing.png ${HOMEICO}/syncthing.png; fi
if [ ! -f  ${HOMEICO}/zigbee2mqtt.png ]; then cp images/zigbee2mqtt.png ${HOMEICO}/zigbee2mqtt.png; fi

#--------------------Create zigbee2mqtt folders
if [ ! -d  ${DATADIR}/zigbee2mqtt ]; then mkdir ${DATADIR}/zigbee2mqtt; fi
if [ ! -d  ${DATADIR}/zigbee2mqtt/zigbee ]; then mkdir ${DATADIR}/zigbee2mqtt/zigbee; fi
if [ ! -d  ${DATADIR}/zigbee2mqtt/mosquitto ]; then mkdir ${DATADIR}/zigbee2mqtt/mosquitto; fi

#--------------------Update zigbee2mqtt files
if [ -f  ${DATADIR}/zigbee2mqtt/zigbee/config.yaml ]; then rm -f ${DATADIR}/zigbee2mqtt/zigbee/config.yaml; fi
cp configs/server/zigbeeconfig.yaml ${DATADIR}/zigbee2mqtt/zigbee/config.yaml;

#--------------------Update mqtt files
if [ -f  ${DATADIR}/zigbee2mqtt/mosquitto/mosquitto.conf ]; then rm -f ${DATADIR}/zigbee2mqtt/mosquitto/mosquitto.conf; fi
cp configs/server/mosquitto.conf ${DATADIR}/zigbee2mqtt/mosquitto/mosquitto.conf;

