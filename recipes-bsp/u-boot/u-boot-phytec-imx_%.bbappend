FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += "file://0001-uboot-for-1-b.patch"
SRC_URI += "file://0002-added-sd-card-slowdown.patch"

COMPATIBLE_MACHINE  = "^("
COMPATIBLE_MACHINE .= "scales-mariner-1"
COMPATIBLE_MACHINE .= ")$"
