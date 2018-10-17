nginx:                              ## This is the name of the package and service
  pkg:                              ## Tells salt this is a package
    - installed                     ## Tells salt to install this package
  service:                          ## Tells salt this is also a service
    - running                       ## Tells salt to ensure the service is running
    - watch:                        ## Tells salt to watch the following items
      - pkg: nginx                  ## If the package nginx gets updated, restart the service
      - file: /etc/nginx/nginx.conf ## If the file nginx.conf gets updated, restart the service

/etc/nginx/nginx.conf: ## Name of the file
  file:                               ## Tells salt this is a file
    - managed                         ## Tells salt to mange this file
    - source: salt://nginx/nginx.conf ## Tells salt where it can find a local copy on the master
    - user: root                      ## Tells salt to ensure the owner of the file is root
    - group: root                     ## Tells salt to ensure the group of the file is root
    - mode: 644                       ## Tells salt to ensure the permissions of the file is 644
