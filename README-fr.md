#Ansible-Xwiki-Example

Ce sont des scripts que j'ai fait pour tester l'utilisation de roles ansible. Il sont développer pour l'automatisation du déploiement de XWIKI
_ATTENTION : Xwiki démarre par défaut avec une interface d'installation (ditribution wizard), je m'arrete la pour l'exercice_

Prérequit :
Il faut utilisé 2 VM :
 - nodexwiki01
 - nodexwiki02
please update your ~/.ssh/config and /etc/hosts accordingly
Those key are 

Mine are 
 ~/.ssh/config
Host nodexwiki01 nodexwiki02 nodexwiki nodemysql
        User ansible
        IdentityFile ~/.ssh/id_rsa_ansible
        
/etc/hosts        
10.0.6.4        nodexwiki nodexwiki01
10.0.6.5        nodemysql nodexwiki02

Chacun des playbooks mets l'accens sur un point des modules ansibles:
 - ansible-xwiki-jdk : installation des packages (ici debian), parametries sur les version
 - ansible-xwiki-mysql : l'utilisation des facts pour maintenir des informations entre les playbooks
 - ansible-xwiki-tomcat : la gestion des template et des liens symboliques
 - ansible-xwiki-ctrl : l'installation à partir d'un dépot git, gestion des services et de apache

Exercices :
 - install only-jdk (solution branch not yet)
 - install xwiki by default (solution branch not yet)
 - install xwiki with jdk8 (solution branch not yet)
 - install xwiki without xctrl (solution branch not yet)
 - install xwiki with xctrl (solution branch not yet)
 - install xwiki and mysql on 2 servers (solution not yet)
 - install xwiki on 2 servers with cluster on (solution not yet)
 - install xwiki by default but using thoses modules from ansible-galaxy (solution not yet)
 
Pour tester ces scripts :
git clone https://github.com/kanedafromparis/ansible-xwiki-jdk.git &&
git clone https://github.com/kanedafromparis/ansible-xwiki-mysql.git &&
git clone https://github.com/kanedafromparis/ansible-xwiki-tomcat.git &&
git clone https://github.com/kanedafromparis/ansible-xwiki-ctrl.git &&
git clone https://github.com/kanedafromparis/ansible-xwiki-example.git &&
ansible-playbook ansible-xwiki-example/example.yml 


###Pour Verifier les  solutions :
(avec Virtualbox VM to to the exercices)
_stop yours VM, restore to the initial snapshot start you vm back_

```
 VBoxManage controlvm "nodexwiki01" stop && \
 VBoxManage snapshot "nodexwiki01" restore "Base-Wheezy" && \
 VBoxManage startvm "nodexwiki01" headless  
``` 
### Set the vm to default states
```
cd ansible-xwiki-example && git checkout sol-xxx \
&& ansible-playbook ansible-xwiki-example/example.yml
```