#!/bin/sh
# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)
# Copyright (C) 2020-present Fewtarius
# Copyright (C) 2022-present Brooksytech

# Load functions needed to send messages to the console
. /etc/profile

unset MYARCH
MYARCH="aarch64"
LINK="https://github.com/brooksytech/JelosAddOns/raw/main/drastic.tar.gz"
SHASUM="863e89d466405f42699550c91bfc859aeddec4d4efa99d4d380993fc97b42ece"

INSTALL_PATH="/storage/.config/drastic"
BINARY="drastic"
LINKDEST="${INSTALL_PATH}/${MYARCH}/drastic.tar.gz"
CFG="/storage/.emulationstation/es_systems.cfg"
START_SCRIPT="$BINARY.sh"


mkdir -p "${INSTALL_PATH}/${MYARCH}/"

curl -Lo $LINKDEST $LINK
CHECKSUM=$(sha256sum $LINKDEST | awk '{print $1}')
if [ ! "${SHASUM}" == "${CHECKSUM}" ]
then
  rm "${LINKDEST}"
  exit 1
fi

tar xvf $LINKDEST -C "${INSTALL_PATH}/${MYARCH}/"
rm $LINKDEST


if [ ! -d "${INSTALL_PATH}/${MYARCH}/drastic/config" ] 
then mkdir ${INSTALL_PATH}/${MYARCH}/drastic/config
fi

cp /storage/roms/ports/JelosAddOns/.drastic/device/`echo "${HW_DEVICE}"`/drastic.cfg ${INSTALL_PATH}/${MYARCH}/drastic/config/drastic.cfg

mv /storage/.config/drastic/aarch64/drastic/drastic.sh /storage/.config/drastic/drastic.sh
chmod +x /storage/.config/drastic/drastic.sh

