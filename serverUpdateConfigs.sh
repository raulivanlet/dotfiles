#!/bin/bash

DATA=${HOME}

#--------------------Create homepage folders
if [ ! -d  ${DATA}/data/homepage ]; then sudo mkdir ${DATA}/data/homepage; fi
if [ ! -d  ${DATA}/data/homepage/config ]; then sudo mkdir ${DATA}/data/homepage/config; fi
if [ ! -d  ${DATA}/data/homepage/icons ]; then sudo mkdir ${DATA}/data/homepage/icons; fi

#--------------------Update homepage files
if [ -f  ${DATA}/data/homepage/config/bookmarks.yaml ];
    then sudo rm ${DATA}/data/homepage/config/bookmarks.yaml;
    else sudo cp configs/homepage/bookmarks.yaml ${DATA}/data/homepage/config/bookmarks.yaml;
fi

if [ -f  ${DATA}/data/homepage/config/docker.yaml ];
    then sudo rm ${DATA}/data/homepage/config/docker.yaml;
    else sudo cp configs/homepage/docker.yaml ${DATA}/data/homepage/config/docker.yaml;
fi

if [ -f  ${DATA}/data/homepage/config/services.yaml ];
    then sudo rm ${DATA}/data/homepage/config/services.yaml;
    else sudo cp configs/homepage/services.yaml ${DATA}/data/homepage/config/services.yaml;
fi

if [ -f  ${DATA}/data/homepage/config/settings.yaml ];
    then sudo rm ${DATA}/data/homepage/config/settings.yaml;
    else sudo cp configs/homepage/settings.yaml ${HOME}/data/homepage/config/settings.yaml;
fi

if [ -f  ${DATA}/data/homepage/config/widgets.yaml ];
    then sudo rm ${DATA}/data/homepage/config/widgets.yaml;
    else sudo cp configs/homepage/widgets.yaml ${DATA}/data/homepage/config/widgets.yaml;
fi


#--------------------Update homepage icons
if [ ! -f  ${DATA}/data/homepage/icons/home-assistant.png ]; then sudo cp images/home-assistant.png /home/${USER}/data/homepage/icons/home-assistant.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/jellyfin.png ]; then sudo cp images/jellyfin.png /home/${USER}/data/homepage/icons/jellyfin.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/mainsail.png ]; then sudo cp images/mainsail.png /home/${USER}/data/homepage/icons/mainsail.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/nextcloud.png ]; then sudo cp images/nextcloud.png /home/${USER}/data/homepage/icons/nextcloud.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/proxmox.png ]; then sudo cp images/proxmox.png /home/${USER}/data/homepage/icons/proxmox.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/qbittorrent.png ]; then sudo cp images/qbittorrent.png /home/${USER}/data/homepage/icons/qbittorrent.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/syncthing.png ]; then sudo cp images/syncthing.png /home/${USER}/data/homepage/icons/syncthing.png; fi
if [ ! -f  ${DATA}/data/homepage/icons/zigbee2mqtt.png ]; then sudo cp images/zigbee2mqtt.png /home/${USER}/data/homepage/icons/zigbee2mqtt.png; fi


#--------------------Create zigbee2mqtt folders
if [ ! -d  ${DATA}/data/zigbee2mqtt ]; then sudo mkdir /home/${USER}/data/zigbee2mqtt; fi
if [ ! -d  ${DATA}/data/zigbee2mqtt/zigbee ]; then sudo mkdir /home/${USER}/data/zigbee2mqtt/zigbee; fi
if [ ! -d  ${DATA}/data/zigbee2mqtt/mosquitto ]; then sudo mkdir /home/${USER}/data/zigbee2mqtt/mosquitto; fi

#--------------------Update zigbee2mqtt files
if [ -f  ${DATA}/data/zigbee2mqtt/zigbee/config.yaml ];
    then sudo rm ${DATA}/data/zigbee2mqtt/zigbee/config.yaml;
    else sudo cp configs/server/zigbeeconfig.yaml ${DATA}/data/zigbee2mqtt/zigbee/config.yaml;
fi

#--------------------Update mqtt files
if [ -f  ${DATA}/data/zigbee2mqtt/mosquitto/mosquitto.conf ];
    then sudo rm ${DATA}/data/zigbee2mqtt/mosquitto/mosquitto.conf;
    else sudo cp configs/server/mosquitto.conf ${DATA}/data/zigbee2mqtt/mosquitto/mosquitto.conf;
fi

