# saltstack-examples

[Português]: #português
[English]: #english
[Developers]: #developers
[License]: #license

#### Menu

1. [Português][Português]
2. [English][English]
3. [Developers][Developers]
4. [License][License]

# Português

O SaltStack é uma ferramenta de código fonte aberto que realiza a gerência de
configuração de servidores, serviços, conteineres e equipamentos de rede.
Ela é uma alternativa a ferramentas como: Ansible (https://www.ansible.com),
Puppet (https://puppet.com) e Chef (https://www.chef.io/chef).

Na página a seguir você encontra vários links de estudo e documentação que estou
usando no aprendizado desta ferramenta.

http://blog.aeciopires.com/primeiros-passos-com-saltstack/

No link a seguir você encontra uma análise comparativa sobre SaltStack, Ansible
e Puppet, no qual o autor compartilha os pontos positivos e negativos encontrados
durante a análise que ele realizou, com base nas necessidades do projeto que ele
participou.

https://blog.ryandlane.com/2014/08/04/moving-away-from-puppet-saltstack-or-ansible/

Para agilizar a criação do ambiente de teste, siga as recomendações da seguinte
página. Serão criadas 3 máquinas virtuais (1 master e 2 slaves) usando o Vagrant
e Virtualbox. É recomendado ter acesso a um computador/notebook com 6 GB de
memória RAM.

https://docs.saltstack.com/en/getstarted/fundamentals/index.html

Neste repositório serão compartilhados alguns exemplos de uso do SaltStack, mas
você só conseguirá entendê-los após ler os materiais citados no primeiro link
desta página ou se já tiver conhecimendo em SaltStack.

Descrição dos diretórios deste repositório:

* ``pillar`` => parâmetros de configuração que são usados em conjunto com as fórmulas
ao aplicar o estado gerenciado nos hosts.
* ``salt`` => fórmulas para estado gerenciado pelo SaltStack. Instalam pacotes,
criam usuários, configuram e iniciam serviços e outras tarefas.

Esses diretórios devem ser copiados para o diretório ``/srv`` do ``master``. Se desejar,
pode alterar os valores conforme a necessidade e caracteristicas do ambiente.

Algumas fórmulas foram copiadas dos seguintes repositórios.

* https://github.com/saltstack-formulas
* https://github.com/saltstack-formulas/zabbix-formula
* https://github.com/saltstack-formulas/php-formula
* https://github.com/saltstack-formulas/mysql-formula

Os comandos a seguir devem ser executados para aplicar o estado desejado nos hosts.

```bash
sudo su
salt-key -L
salt-key -a minion1
salt '*' saltutil.refresh_pillar
salt 'minion1' state.apply
```
Bons testes!

# English

SaltStack is an open source tool that performs configuration of servers, services,
containers and network equipment. It is an alternative to tools like:
Ansible (https://www.ansible.com), Puppet (https://puppet.com) and Chef
(https://www.chef.io/chef).

On the following page you will find various study and documentation links that I am
using in learning this tool.

http://blog.aeciopires.com/primeiros-passos-com-saltstack/

In the following link you will find a comparative analysis of SaltStack, Ansible
and Puppet, in which the author shares the positive and negative points found
during the analysis that he performed, based on the needs of the project that he
participated.

https://blog.ryandlane.com/2014/08/04/moving-away-from-puppet-saltstack-or-ansible/

To expedite the creation of the test environment, follow the recommendations of the
following page. Three virtual machines (1 master and 2 slaves) will be created using
the Vagrant and Virtualbox. It is recommended to have access to a computer/notebook
with 6 GB of RAM memory.

https://docs.saltstack.com/en/getstarted/fundamentals/index.html

In this repository will be shared some examples of using SaltStack, but you will
only be able to understand them after reading the materials quoted in the first link
of this page or if you already know about SaltStack.

Description of the directories of this repository:

* ``pillar`` => configuration parameters that are used in conjunction with the formulas
when applying the managed state to the hosts.
* ``salt`` => formulas for state managed by SaltStack. They install packages,
create users, configure and start services and other tasks.

These directories should be copied to the ``/srv`` directory of the ``master``. If you wish,
you can change the values ​​according to the need and characteristics of the environment.

Some formulas have been copied from the following repositories.

* https://github.com/saltstack-formulas
* https://github.com/saltstack-formulas/zabbix-formula
* https://github.com/saltstack-formulas/php-formula
* https://github.com/saltstack-formulas/mysql-formula

The following commands must be executed to apply the desired state to the hosts.

```bash
sudo su
salt-key -L
salt-key -a minion1
salt '*' saltutil.refresh_pillar
salt 'minion1' state.apply
```

Good tests!

## Developers

developer: Aecio dos Santos Pires<br>
mail: http://blog.aeciopires.com/contato/

## License

GPL-3.0 2018 Aécio dos Santos Pires
