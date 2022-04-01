# we need to set aside some space at the beginning for writing u-boot before our partitions
DEVICE_SPECIFIC_SPACE = "20480"

# add the dtb, extlinux.conf and u-boot binaries to rootfs /boot directory
IMAGE_INSTALL:append = " \
    kernel-devicetree \
    u-boot-extlinux \
    u-boot-blobless \
"

IMAGE_CMD:balenaos-img:append () {
    dd if=${DEPLOY_DIR_IMAGE}/idbloader.img of=${BALENA_RAW_IMG} conv=notrunc bs=512 seek=64
    dd if=${DEPLOY_DIR_IMAGE}/u-boot.itb of=${BALENA_RAW_IMG} conv=notrunc bs=512 seek=16384
}
