FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-SCALES-version-1-DTS.patch"

COMPATIBLE_MACHINE:append = "|phycore-imx8x-1|scales-mariner-1"