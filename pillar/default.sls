# Default pillar values
{% if grains['environment'] == 'test' %}
message: "It's test"
package_name: 'htop'
{% elif grains['environment'] == 'homolog' %}
message: "It's homolog"
package_name: 'vim'
{% endif %}
