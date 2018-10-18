# Create user
generic_user:
  user.present:
    - name: {{ pillar['devops_user']['name'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['devops_user']['name'] }}
    - uid: {{ pillar['devops_user']['uid'] }}
    - password: {{ pillar['devops_user']['password'] }}
