FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += "file://0001-uboot-for-1-b.patch"
COMPATIBLE_MACHINE .= "|scales-mariner-1"
