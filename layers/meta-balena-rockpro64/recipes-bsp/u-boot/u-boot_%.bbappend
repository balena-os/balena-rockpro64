FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

UBOOT_KCONFIG_SUPPORT = "1"

inherit resin-u-boot

SRC_URI:remove = "file://resin-specific-env-integration-kconfig.patch"

# we use the precompiled bl31 from https://github.com/rockchip-linux/rkbin/commit/bc15c5e21557dad5440f8ed0312ec368f73e9476
SRC_URI:append = " \
    file://Rework-resin-specific-env-integration-kconfig.patch \
    file://0001-Integrate-with-Balena-u-boot-environment.patch \
    file://balenaos_bootcommand.cfg \
    file://fix_boot.cfg \
    file://rk3399_bl31_v1.35.elf \
"

# bundle only bl31 (we choose the scenario with no Rockchip blobs)
EXTRA_OEMAKE += "BL31=${WORKDIR}/rk3399_bl31_v1.35.elf"
do_compile:append() {
	oe_runmake
}

do_install:append() {
	KERNEL_CMDLINE_ARGS="console=tty1 console=ttyS2,1500000n8 rw \${resin_kernel_root} rootfstype=ext4 rootwait"

	# Create extlinux config file for internal image
	mkdir -p ${D}/boot/extlinux || true
	cat >${D}/boot/extlinux/extlinux.conf <<EOF
default BalenaOS

label BalenaOS
    kernel /boot/${KERNEL_IMAGETYPE}

    devicetree /boot/$(echo "${KERNEL_DEVICETREE}" | cut -d '/' -f 2)
    append ${KERNEL_CMDLINE_ARGS}
EOF

	install -m 0644 idbloader.img u-boot.itb ${D}/boot
}

# Ensure this isn't re-used from sstate
do_deploy[nostamp] = "1"

do_deploy:append() {
	mkdir -p ${DEPLOY_DIR_IMAGE}
	cp ${B}/idbloader.img ${B}/u-boot.itb ${DEPLOY_DIR_IMAGE}
}

# repackage u-boot so that it leaves out the blobless files which we'll package separately
FILES:${PN} = "/boot/u-boot*.bin"

PACKAGES += "${PN}-blobless"

# package u-boot with bl31 only (no additional Rockchip blobs)
FILES:${PN}-blobless = " \
    /boot/idbloader.img \
    /boot/u-boot.itb \
"

FILES:${PN}-extlinux = "/boot/extlinux/extlinux.conf"
