SUMMARY = "Test GPIO Ping Script"
LICENSE = "MIT"
SRC_URI = "file://watchdogtimer.py"

S = "${WORKDIR}"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/watchdogtimer.py ${D}${bindir}/watchdogtimer
}

RDEPENDS_${PN} += "python3-core python3-libgpiod"
