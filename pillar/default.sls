# Default pillar values
{% if grains['os_family'] == 'Debian' %}
message: "It's test"
package_name: 'htop'
{% elif grains['os_family'] == 'RedHat' %}
message: "It's homolog"
package_name: 'vim'
{% endif %}
