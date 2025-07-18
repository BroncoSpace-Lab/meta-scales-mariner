FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = "\
    file://0001-arm64-dts-imx8qxp-phyboard-SCALES-Mariner-Add-dts.patch \
"
COMPATIBLE_MACHINE  = "^("
COMPATIBLE_MACHINE .= "scales-mariner-imx8x"
COMPATIBLE_MACHINE .= ")$"