base:
  # Configuration for all minions
  '*':
    - common
    - user
    - network
    - ntp
  # Install MySQL, Apache, PHP e Zabbix Agent e Zabbix Server in host minion1
  'minion1':
    - zabbix.agent.repo
    - zabbix.agent.conf

    - mysql.server
    - mysql.client
    - zabbix.mysql.conf
      # Devido a bug reportado neste ticket: 
      # https://github.com/saltstack-formulas/zabbix-formula/issues/99
      # a linha a seguir deve ser comentada na primeira vez e descomentada
      # na segunda vez em diante
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
