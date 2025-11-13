FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += "file://0001-SCALES-u-boot.patch"


COMPATIBLE_MACHINE:append = "|phycore-imx8x-1|scales-mariner-1"
