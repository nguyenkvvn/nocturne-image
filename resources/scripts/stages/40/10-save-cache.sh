#!/bin/sh

# save cache
if [ -d "${ROOTFS_PATH}/etc/apk/cache" ]; then
  mkdir -p ${CACHE_PATH}/${ARCH}/apk/
  colour_echo "Saving apk cache" -Cyan
  cp ${ROOTFS_PATH}/etc/apk/cache/*.apk ${CACHE_PATH}/${ARCH}/apk
  cp ${ROOTFS_PATH}/etc/apk/cache/*.gz ${CACHE_PATH}/${ARCH}/apk
  rm -rf ${ROOTFS_PATH}/etc/apk/cache
fi
