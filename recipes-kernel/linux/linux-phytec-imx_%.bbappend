FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
SRC_URI += "file://0001-Testing-minimal-dst.patch"

COMPATIBLE_MACHINE .= "|scales-mariner-1"
