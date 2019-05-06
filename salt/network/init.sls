# Create network file
network_file:
  file.managed:
    - name: /etc/network_env
    - source: salt://network/files/network_env
    - template: jinja
    - mode: 644
    - context:
      ipaddress: {{ grains['ip_interfaces']['enp0s8'][0] }}
      location: {{ grains['fqdn'][3:6] }}
