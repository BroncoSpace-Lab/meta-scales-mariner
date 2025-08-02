SUMMARY = "GPIO watchdog timer pinger"
LICENSE = "MIT"
SRC_URI = "file://watchdogtimer.sh \
           file://watchdogtimer.service"

S = "${WORKDIR}"

inherit systemd

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/watchdogtimer.sh ${D}${bindir}/watchdogtimer.sh

    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/watchdogtimer.service ${D}${systemd_system_unitdir}/watchdogtimer.service
}

SYSTEMD_SERVICE:${PN} = "watchdogtimer.service"
SYSTEMD_AUTO_ENABLE:${PN} = "enable"

