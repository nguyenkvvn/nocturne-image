#!/bin/sh

# copy cache
if [ -n "${CACHE_PATH}" ]; then
  mkdir -p ${ROOTFS_PATH}/etc/apk/cache
  if [ -d ${CACHE_PATH}/${ARCH}/apk ]; then
    colour_echo "Restoring apk cache" -Cyan
    cp ${CACHE_PATH}/${ARCH}/apk/*.apk ${ROOTFS_PATH}/etc/apk/cache
    cp ${CACHE_PATH}/${ARCH}/apk/*.gz ${ROOTFS_PATH}/etc/apk/cache
  fi
fi
