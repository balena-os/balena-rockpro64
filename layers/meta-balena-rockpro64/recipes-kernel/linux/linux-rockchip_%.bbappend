inherit kernel-balena

KERNEL_IMAGETYPES:remove = "${ROCKCHIP_KERNEL_IMAGES}"

python () {
    # revert variable set in rockchip BSP
    d.setVar('KERNEL_IMAGETYPE_FOR_MAKE', d.getVar('KERNEL_IMAGETYPES'));
}

# we disable Rockchip wifi stack since we currently do not support the external wifi module (will revisit bt / wifi in case it's required by customers)
# if we do need to support bt / wifi we would better use the backported brcmfmac driver like we did for the RockPi 4B
BALENA_CONFIGS:append:rockpro64 = " no-rockchip-wl"
BALENA_CONFIGS[no-rockchip-wl] = " \
    CONFIG_WL_ROCKCHIP=n \
"
