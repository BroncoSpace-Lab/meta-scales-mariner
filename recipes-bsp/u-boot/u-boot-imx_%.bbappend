FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += "file://0001-bootloader-patch-to-include-custom-dtb.patch"

SRC_URI += "file://imx8qxp-SCALES-Mariner1-A.dts"

UBOOT_DEVICETREE += " imx8qxp-SCALES-Mariner1-A"

