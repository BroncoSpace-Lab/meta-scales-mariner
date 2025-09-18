FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += "file://0001-uboot-fix.patch"
SRC_URI += "file://imx8qxp-SCALES-Mariner1-B.dts"

UBOOT_DEVICETREE += " imx8qxp-SCALES-Mariner1-B"

