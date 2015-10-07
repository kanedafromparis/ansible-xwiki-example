# Ansible-xwiki-example

This is  example for xwiki deployment using ansible
_WARNING : Xwiki start with the distribution wizard, so it's normal and the exercice won't go futher._

Requisit : 
You are supposed to have 2 VM :

 - nodexwiki01
 - nodexwiki02

Please update your ~/.ssh/config and /etc/hosts accordingly


~/.ssh/config

```bash
Host nodexwiki01 nodexwiki02 nodexwiki nodemysql
        User ansible
        IdentityFile ~/.ssh/id_rsa_ansible
```

/etc/hosts        

```
10.0.6.4        nodexwiki nodexwiki01
10.0.6.5        nodemysql nodexwiki02
```

This example use thoses roles :
- ansible-xwiki-jdk 
- ansible-xwiki-mysql
- ansible-xwiki-tomcat
- ansible-xwiki-ctrl (or ansible-xwiki-xinit)

Each playbook focus on a different feature of ansible :
 - ansible-xwiki-jdk : package installation (here debian), use parameter to get various versions
 - ansible-xwiki-mysql : Share fact between playbooks
 - ansible-xwiki-tomcat : template and links
 - ansible-xwiki-ctrl : git installations, services hanlder

Exercices :
 - install only-jdk (solution branch not yet)
 - install xwiki by default (solution branch not yet)
 - install xwiki with jdk8 (solution branch not yet)
 - install xwiki without xctrl (solution branch not yet)
 - install xwiki with xctrl (solution branch not yet)
 - install xwiki and mysql on 2 servers (solution not yet)
 - install xwiki on 2 servers with cluster on (solution not yet)
 - install xwiki by default but using thoses modules from ansible-galaxy (solution not yet)

To check solutions :
(if you use Virtualbox VM to to the exercices)
 - stop yours VM, restore to the initial snapshot start you vm back
 ''' VBoxManage controlvm "nodexwiki01" stop && VBoxManage snapshot "nodexwiki01" restore "Base-Wheezy" && VBoxManage startvm "nodexwiki01" headless  
 
 - set the vm to default states 
 - cd ansible-xwiki-example && git checkout sol-xxx && ansible-playbook ansible-xwiki-example/example.yml

