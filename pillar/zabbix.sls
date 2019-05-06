zabbix:
  # Overrides map.jinja
  lookup:
    version_repo: 4.2
    agent:
      version: '1:4.2.*'
    frontend:
      version: '1:4.2.*'
      dbtype: MYSQL
    server:
      version: '1:4.2.*'
      pkgs:
        - zabbix-server-mysql
        - zabbix-get

  # The files_switch key serves as a selector for alternative directories under
  # the formula files directory. See TOFS pattern doc for more info.
  files_switch:
    - id
    - os_family

  # Zabbix user has to be member of some groups in order to have permissions to
  # execute or read some things
  user_groups:
    - adm

zabbix-agent:
  server:
    - localhost
  serveractive:
    - localhost
  listenip: 0.0.0.0
  listenport: 10050
  hostmetadata: c9767034-22c6-4d3d-a886-5fcaf1386b77
  # For zabbix-agent below version 3 if you want to use syslog instead of file specify
  # logfile: syslog
  logfile: /var/log/zabbix/zabbix_agentd.log
  logfilesize: 0
  include: /etc/zabbix/zabbix_agentd.d/
  # Or multiple "Include" options
  includes:
    - /etc/zabbix/zabbix_agentd.d/
    #- /some/custom/location/
  userparameters:
    - net.ping[*],/usr/bin/fping -q -c3 $1 2>&1 | sed 's,.*/\([0-9.]*\)/.*,\1,'
    - custom.vfs.dev.discovery,/usr/local/bin/dev-discovery.sh
  extra_conf: |
    # Here we can set extra agent configuration lines

zabbix-server:
  listenip: 0.0.0.0
  listenport: 10051
  dbhost: localhost
  dbname: zabbix
  dbuser: zabbixuser
  dbpass: zabbix
  extra_conf: |
    # Here we can set extra server configuration lines

zabbix-mysql:
  dbtype: MYSQL
  dbhost: localhost
  dbname: zabbix
  dbuser: zabbixuser
  dbpassword: zabbix
  dbuser_host: '%'
  # Optionally specify this for a non-local dbhost
  #dbroot_user: 'root'
  #dbroot_pass: 'rootpass'

mysql:
  server:
    # Use this account for database admin (defaults to root)
    root_user: 'root'
    # root_password: '' - to have root@localhost without password
    root_password: 'somepass'
    root_password_hash: '*13883BDDBE566ECECC0501CDE9B293303116521A'

zabbix-frontend:
  dbtype: MYSQL
  dbhost: localhost
  dbname: zabbix
  dbuser: zabbixuser
  dbpassword: zabbix
  zbxserver: localhost
  zbxserverport: 10051
  zbxservername: 'Zabbix installed with saltstack'

zabbix-proxy:
  proxymode: 0
  server: localhost
  serverport: 10051
  hostname: localhost
  hostnameitem: system.hostname
  listenport: 10051
  sourceip: 127.0.0.1
  logfile: syslog
  logfilesize: 0
  debugelevel: 3
  pidfile: /tmp/zabbix_proxy.pid
  dbhost: localhost
  dbname: /var/lib/zabbix/zabbix_proxy.db
  dbuser: zabbix
  include: /etc/zabbix/zabbix_proxy.d/

