base:
  '*':
    - common
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
  'minion2':
    - websetup
