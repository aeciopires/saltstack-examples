# Create generic user
generic_user:
  user.present:
    - name: {{ pillar['devops_user']['name'] }}
    - shell: /bin/bash
    - home: /home/{{ pillar['devops_user']['name'] }}
    - uid: {{ pillar['devops_user']['uid'] }}
    - password: {{ pillar['devops_user']['password'] }}

# Create user list
{% for user, details in pillar['devops_user_list'].iteritems() %}
{{ user }}:
  user.present:
    - home: /home/{{ user }}
    - uid: {{ details['uid'] }}
    - password: {{ details['passwd'] }}
    - shell: /bin/bash
{% endfor %}
