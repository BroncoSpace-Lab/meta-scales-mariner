FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += "file://0001-SCALES-device-tree.patch"

COMPATIBLE_MACHINE  = "^("
COMPATIBLE_MACHINE .= "scales-mariner-1"
COMPATIBLE_MACHINE .= ")$"
