#!/bin/bash


#--------------------Create homepage folders
if [ ! -d /home/${USER}/data/homepage ]; then sudo mkdir ${HOME}/data/homepage; fi
if [ ! -d /home/${USER}/data/homepage/config ]; then sudo mkdir ${HOME}/data/homepage/config; fi
if [ ! -d /home/${USER}/data/homepage/icons ]; then sudo mkdir ${HOME}/data/homepage/icons; fi

#--------------------Update homepage files
if [ -f /home/${USER}/data/homepage/config/bookmarks.yaml ];
    then sudo bash -c 'cat configs/homepage/bookmarks.yaml > /home/${USER}/data/homepage/config/bookmarks.yaml';
    else sudo cp configs/homepage/bookmarks.yaml /home/${USER}/data/homepage/config/bookmarks.yaml;
fi

if [ -f /home/${USER}/data/homepage/config/docker.yaml ];
    then sudo bash -c 'cat configs/homepage/docker.yaml > ${HOME}/data/homepage/config/docker.yaml';
    else sudo cp configs/homepage/docker.yaml ${HOME}/data/homepage/config/docker.yaml;
fi

if [ -f /home/${USER}/data/homepage/config/services.yaml ];
    then sudo bash -c 'cat configs/homepage/services.yaml > /home/${USER}/data/homepage/config/services.yaml';
    else sudo cp configs/homepage/services.yaml /home/${USER}/data/homepage/config/services.yaml;
fi

if [ -f /home/${USER}/data/homepage/config/settings.yaml ];
    then sudo bash -c 'cat configs/homepage/settings.yaml > ${HOME}/data/homepage/config/settings.yaml';
    else sudo cp configs/homepage/settings.yaml ${HOME}/data/homepage/config/settings.yaml;
fi

if [ -f /home/${USER}/data/homepage/config/widgets.yaml ];
    then sudo bash -c 'cat configs/homepage/widgets.yaml > /home/${USER}/data/homepage/config/widgets.yaml';
    else sudo cp configs/homepage/widgets.yaml /home/${USER}/data/homepage/config/widgets.yaml;
fi


#--------------------Create zigbee2mqtt folders
if [ ! -d /home/${USER}/data/zigbee2mqtt ]; then sudo mkdir /home/${USER}/data/zigbee2mqtt; fi
if [ ! -d /home/${USER}/data/zigbee2mqtt/zigbee ]; then sudo mkdir /home/${USER}/data/zigbee2mqtt/zigbee; fi
if [ ! -d /home/${USER}/data/zigbee2mqtt/mosquitto ]; then sudo mkdir /home/${USER}/data/zigbee2mqtt/mosquitto; fi

#--------------------Update zigbee2mqtt files
if [ -f /home/${USER}/data/zigbee2mqtt/zigbee/config.yaml ];
    then sudo bash -c 'cat configs/homepage/zigbeeconfig.yaml > /home/${USER}/data/zigbee2mqtt/zigbee/config.yaml';
    else sudo cp configs/homepage/zigbeeconfig.yaml /home/${USER}/data/zigbee2mqtt/zigbee/config.yaml;
fi

#--------------------Update mqtt files
if [ -f /home/${USER}/data/zigbee2mqtt/mosquitto/mosquitto.conf ];
    then sudo bash -c 'cat configs/homepage/mosquitto.conf > /home/${USER}/data/zigbee2mqtt/mosquitto/mosquitto.conf';
    else sudo cp configs/homepage/mosquitto.conf /home/${USER}/data/zigbee2mqtt/mosquitto/mosquitto.conf;
fi

