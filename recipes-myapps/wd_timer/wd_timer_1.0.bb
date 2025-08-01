SUMMARY = "Test GPIO Ping Script"
LICENSE = "MIT"
SRC_URI = "file://watchdogtimer.py file://watchdogtimer.service"

S = "${WORKDIR}"

inherit systemd

SYSTEMD_SERVICE:${PN} = "watchdogtimer.service"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/watchdogtimer.py ${D}${bindir}/watchdogtimer

    Install systemd service
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/watchdogtimer.service ${D}${systemd_system_unitdir}
}

RDEPENDS_${PN} += "python3-core python3-libgpiod"
