# Install NTP
ntp_package:
  pkg.installed:
    - name: ntp

# Manage config file of NTP
ntp_conf_file:
  file.managed:
    - name: /etc/ntp.conf
    - source: salt://ntp/files/ntp.conf
    - user: root
    - group: root
    - mode: 644
    - require:
      - pkg: ntp_package

# Start NTP service after change file
ntp_service:
  service:
    - name: ntp
    - running
    - enable: True
    - require:
      - file: ntp_conf_file
    - watch:
      - file: ntp_conf_file
