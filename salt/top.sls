base:
  # Configuration for all minions
  '*':
    - common
  # Install MySQL, Apache, PHP e Zabbix Agent e Zabbix Server in host minion1
  'minion1':
    - zabbix.agent.repo
    - zabbix.agent.conf

    - mysql.server
    - mysql.client
    - zabbix.mysql.conf
    - zabbix.mysql.schema

    - zabbix.server.repo
    - zabbix.server.conf

    - php.ng.fpm.install
    - php.ng.fpm.config
    - php.ng.mysql
    - php.ng.bcmath
    - php.ng.mbstring
    - php.ng.gd
    - php.ng.xml
    - php.ng.opcache

    - zabbix.frontend.repo
    - zabbix.frontend.conf
  # Install Apache in host minion2
  'minion2':
    - websetup
