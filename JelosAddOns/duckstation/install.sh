#!/bin/sh
# SPDX-License-Identifier: GPL-2.0-or-later
# Copyright (C) 2019-present Shanti Gilbert (https://github.com/shantigilbert)
# Copyright (C) 2020-present Fewtarius
# Copyright (C) 2022-present Brooksytech

# Load functions needed to send messages to the console
. /etc/profile

LINK="https://github.com/brooksytech/JelosAddOns/raw/main/duckstation_custom_libretro.tar.gz"
SHASUM="91655fa59fb8de3f0ded3fd21aefbdda629e8d5f872e982291d07a3916af1f24"

INSTALL_PATH="/storage/.config/retroarch/cores"
BINARY="duckstation"
LINKDEST="${INSTALL_PATH}/duckstation_custom_libretro.tar.gz"
START_SCRIPT="$BINARY.sh"


mkdir -p "${INSTALL_PATH}"

curl -Lo $LINKDEST $LINK
CHECKSUM=$(sha256sum $LINKDEST | awk '{print $1}')
if [ ! "${SHASUM}" == "${CHECKSUM}" ]
then
  rm "${LINKDEST}"
  exit 1
fi

tar xvf $LINKDEST -C "${INSTALL_PATH}"
rm $LINKDEST

