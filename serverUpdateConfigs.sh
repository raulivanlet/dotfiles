#!/bin/bash

DATA=${HOME}

#--------------------Create homepage folders
if [ ! -d  ${DATA}/data/homepage ]; then mkdir ${DATA}/data/homepage; fi
if [ ! -d  ${DATA}/data/homepage/config ]; then mkdir ${DATA}/data/homepage/config; fi
if [ ! -d  ${DATA}/data/homepage/icons ]; then mkdir ${DATA}/data/homepage/icons; fi

#--------------------Update homepage files
if [ -f  ${DATA}/data/homepage/config/bookmarks.yaml ]; then rm -f ${DATA}/data/homepage/config/bookmarks.yaml; fi
cp configs/homepage/bookmarks.yaml ${DATA}/data/homepage/config/bookmarks.yaml;

if [ -f  ${DATA}/data/homepage/config/docker.yaml ]; then rm -f ${DATA}/data/homepage/config/docker.yaml; fi
cp configs/homepage/docker.yaml ${DATA}/data/homepage/config/docker.yaml;

if [ -f  ${DATA}/data/homepage/config/services.yaml ]; then rm -f ${DATA}/data/homepage/config/services.yaml; fi
cp configs/homepage/services.yaml ${DATA}/data/homepage/config/services.yaml;

if [ -f  ${DATA}/data/homepage/config/settings.yaml ]; then rm -f ${DATA}/data/homepage/config/settings.yaml; fi
cp configs/homepage/settings.yaml ${HOME}/data/homepage/config/settings.yaml;

if [ -f  ${DATA}/data/homepage/config/widgets.yaml ]; then rm -f ${DATA}/data/homepage/config/widgets.yaml; fi
cp configs/homepage/widgets.yaml ${DATA}/data/homepage/config/widgets.yaml;


#--------------------Update homepage icons
if [ ! -f  ${DATA}/data/homepage/icons/home-assistant.png ]; then cp images/home-assistant.png ${DATA}/data/homepage/icons/home-assistant.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/jellyfin.png ]; then cp images/jellyfin.png ${DATA}/data/homepage/icons/jellyfin.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/mainsail.png ]; then cp images/mainsail.png ${DATA}/data/homepage/icons/mainsail.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/nextcloud.png ]; then cp images/nextcloud.png ${DATA}/data/homepage/icons/nextcloud.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/proxmox.png ]; then cp images/proxmox.png ${DATA}/data/homepage/icons/proxmox.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/qbittorrent.png ]; then cp images/qbittorrent.png ${DATA}/data/homepage/icons/qbittorrent.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/syncthing.png ]; then cp images/syncthing.png ${DATA}/data/homepage/icons/syncthing.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/zigbee2mqtt.png ]; then cp images/zigbee2mqtt.png ${DATA}/data/homepage/icons/zigbee2mqtt.png; fi


#--------------------Create zigbee2mqtt folders
if [ ! -d  ${DATA}/data/zigbee2mqtt ]; then sudo mkdir /home/${USER}/data/zigbee2mqtt; fi
if [ ! -d  ${DATA}/data/zigbee2mqtt/zigbee ]; then sudo mkdir /home/${USER}/data/zigbee2mqtt/zigbee; fi
if [ ! -d  ${DATA}/data/zigbee2mqtt/mosquitto ]; then sudo mkdir /home/${USER}/data/zigbee2mqtt/mosquitto; fi

#--------------------Update zigbee2mqtt files
if [ -f  ${DATA}/data/zigbee2mqtt/zigbee/config.yaml ]; then rm -f ${DATA}/data/zigbee2mqtt/zigbee/config.yaml; fi
cp configs/server/zigbeeconfig.yaml ${DATA}/data/zigbee2mqtt/zigbee/config.yaml;

#--------------------Update mqtt files
if [ -f  ${DATA}/data/zigbee2mqtt/mosquitto/mosquitto.conf ]; then rm -f ${DATA}/data/zigbee2mqtt/mosquitto/mosquitto.conf; fi
cp configs/server/mosquitto.conf ${DATA}/data/zigbee2mqtt/mosquitto/mosquitto.conf;

