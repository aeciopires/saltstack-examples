# Top pillar values
base:
  # For all hosts in default.sls file
  '*':
    - default
  # For host minion1 in zabbix.sls file
  'minion1':
    - zabbix
