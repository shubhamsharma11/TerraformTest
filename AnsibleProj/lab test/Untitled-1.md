testadmin@MasterVm:~$ ansible-playbook -i Inventory AnsibleProjects/\Test1.yaml
[WARNING]: Unable to parse /home/testadmin/Inventory as an inventory source
[WARNING]: No inventory was parsed, only implicit localhost is available
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'
ERROR! A malformed block was encountered while loading tasks: {'command': 'mkdir /root/"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~$ ansible-playbook -i Inventory /AnsibleProjects/Test2.yaml
ERROR! the playbook: /AnsibleProjects/Test2.yaml could not be found
testadmin@MasterVm:~$ ansible-playbook -i Inventory \AnsibleProjects\Test2.yaml
ERROR! the playbook: AnsibleProjectsTest2.yaml could not be found
testadmin@MasterVm:~$ sudo ansible-playbook -i Inventory \AnsibleProjects\Test2.yaml
ERROR! the playbook: AnsibleProjectsTest2.yaml could not be found
testadmin@MasterVm:~$ ansible-playbook -i Inventory AnsibleProjects/\Test1.yaml
[WARNING]: Unable to parse /home/testadmin/Inventory as an inventory source
[WARNING]: No inventory was parsed, only implicit localhost is available
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'
ERROR! A malformed block was encountered while loading tasks: {'command': 'mkdir /root/"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~$ ansible-playbook -i inventory AnsibleProjects/\Test1.yaml
[WARNING]: Unable to parse /home/testadmin/inventory as an inventory source
[WARNING]: No inventory was parsed, only implicit localhost is available
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'
ERROR! A malformed block was encountered while loading tasks: {'command': 'mkdir /root/"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~$ pwd
/home/testadmin
testadmin@MasterVm:~$ ansible-playbook -i inventory AnsibleProjects/\Test1.yaml
[WARNING]: Unable to parse /home/testadmin/inventory as an inventory source
[WARNING]: No inventory was parsed, only implicit localhost is available
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'
ERROR! A malformed block was encountered while loading tasks: {'command': 'sudo mkdir /$PWD/"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~$ ansible-playbook AnsibleProjects/Test1.yaml
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'
ERROR! A malformed block was encountered while loading tasks: {'command': 'sudo mkdir /$PWD/"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~$ ansible-playbook -i inventory AnsibleProjects/\Test3.yaml
[WARNING]: Unable to parse /home/testadmin/inventory as an inventory source
[WARNING]: No inventory was parsed, only implicit localhost is available
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'

PLAY [Dump] *********************************************************************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Facts] ********************************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Dump] *********************************************************************************************************************************************************************************************************************
changed: [localhost -> localhost]

PLAY RECAP **********************************************************************************************************************************************************************************************************************
localhost                  : ok=3    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~$ cd AnsibleProjects/
testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml
ERROR! A malformed block was encountered while loading tasks: {'command': 'sudo mkdir /$PWD/"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test2.yaml
ERROR! Syntax Error while loading YAML.
  mapping values are not allowed in this context

The error appears to be in '/home/testadmin/AnsibleProjects/Test2.yaml': line 2, column 9, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

- name: Create folders
    file:
        ^ here
testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test2.yaml

PLAY [To Create 3 Folders] ******************************************************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************************************************************
The authenticity of host '10.0.0.4 (10.0.0.4)' can't be established.
ECDSA key fingerprint is SHA256:tzRJsNSl5LN/96DEAS/1UzL1BAA29jp6IxQ17ewkDnw.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
ok: [10.0.0.4]

TASK [Create folders] ***********************************************************************************************************************************************************************************************************
changed: [10.0.0.4] => (item=fold1)
changed: [10.0.0.4] => (item=fold2)
changed: [10.0.0.4] => (item=fold3)

PLAY RECAP **********************************************************************************************************************************************************************************************************************
10.0.0.4                   : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test4.yaml

PLAY [install Apache Web-Server] ************************************************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [Install Apache on CentOS  Server] *****************************************************************************************************************************************************************************************
skipping: [localhost]

TASK [Install Apache on Ubuntu Server] ******************************************************************************************************************************************************************************************
changed: [localhost]

PLAY RECAP **********************************************************************************************************************************************************************************************************************
localhost                  : ok=2    changed=1    unreachable=0    failed=0    skipped=1    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml
ERROR! A malformed block was encountered while loading tasks: {'command': 'sudo mkdir /$PWD/"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml
ERROR! A malformed block was encountered while loading tasks: {'command': 'sudo mkdir /$PWD/"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml
ERROR! A malformed block was encountered while loading tasks: {'command': 'sudo mkdir /$PWD/"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml
ERROR! A malformed block was encountered while loading tasks: {'command': 'mkdir /"{{ item }}"', 'with_items': ['fold1', 'fold2', 'fold3']} should be a list or None but is <class 'ansible.parsing.yaml.objects.AnsibleMapping'>

The error appears to be in '/home/testadmin/AnsibleProjects/Test1.yaml': line 2, column 3, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

---
- hosts: web
  ^ here
testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml

PLAY [To Create 3 Folders] ******************************************************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [create folder] ************************************************************************************************************************************************************************************************************
changed: [localhost] => (item=fold1)
changed: [localhost] => (item=fold2)
changed: [localhost] => (item=fold3)
[WARNING]: Consider using the file module with state=directory rather than running 'mkdir'.  If you need to use command because file is insufficient you can add 'warn: false' to this command task or set
'command_warnings=False' in ansible.cfg to get rid of this message.

PLAY RECAP **********************************************************************************************************************************************************************************************************************
localhost                  : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml

PLAY [To Create 3 Folders] ******************************************************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [create folder] ************************************************************************************************************************************************************************************************************
changed: [localhost] => (item=fold4)
changed: [localhost] => (item=fold5)
[WARNING]: Consider using the file module with state=directory rather than running 'mkdir'.  If you need to use command because file is insufficient you can add 'warn: false' to this command task or set
'command_warnings=False' in ansible.cfg to get rid of this message.
failed: [localhost] (item=fold3) => {"ansible_loop_var": "item", "changed": true, "cmd": ["mkdir", "/root/fold3"], "delta": "0:00:00.005505", "end": "2023-12-15 05:29:23.464358", "item": "fold3", "msg": "non-zero return code", "rc": 1, "start": "2023-12-15 05:29:23.458853", "stderr": "mkdir: cannot create directory ‘/root/fold3’: File exists", "stderr_lines": ["mkdir: cannot create directory ‘/root/fold3’: File exists"], "stdout": "", "stdout_lines": []}

PLAY RECAP **********************************************************************************************************************************************************************************************************************
localhost                  : ok=1    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml

PLAY [To Create 3 Folders] ******************************************************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [create folder] ************************************************************************************************************************************************************************************************************
[WARNING]: Consider using the file module with state=directory rather than running 'mkdir'.  If you need to use command because file is insufficient you can add 'warn: false' to this command task or set
'command_warnings=False' in ansible.cfg to get rid of this message.
failed: [localhost] (item=fold1) => {"ansible_loop_var": "item", "changed": true, "cmd": ["mkdir", "/root/fold1"], "delta": "0:00:00.005134", "end": "2023-12-15 05:31:11.604956", "item": "fold1", "msg": "non-zero return code", "rc": 1, "start": "2023-12-15 05:31:11.599822", "stderr": "mkdir: cannot create directory ‘/root/fold1’: File exists", "stderr_lines": ["mkdir: cannot create directory ‘/root/fold1’: File exists"], "stdout": "", "stdout_lines": []}
failed: [localhost] (item=fold2) => {"ansible_loop_var": "item", "changed": true, "cmd": ["mkdir", "/root/fold2"], "delta": "0:00:00.005462", "end": "2023-12-15 05:31:11.932569", "item": "fold2", "msg": "non-zero return code", "rc": 1, "start": "2023-12-15 05:31:11.927107", "stderr": "mkdir: cannot create directory ‘/root/fold2’: File exists", "stderr_lines": ["mkdir: cannot create directory ‘/root/fold2’: File exists"], "stdout": "", "stdout_lines": []}
failed: [localhost] (item=fold3) => {"ansible_loop_var": "item", "changed": true, "cmd": ["mkdir", "/root/fold3"], "delta": "0:00:00.005429", "end": "2023-12-15 05:31:12.236037", "item": "fold3", "msg": "non-zero return code", "rc": 1, "start": "2023-12-15 05:31:12.230608", "stderr": "mkdir: cannot create directory ‘/root/fold3’: File exists", "stderr_lines": ["mkdir: cannot create directory ‘/root/fold3’: File exists"], "stdout": "", "stdout_lines": []}

PLAY RECAP **********************************************************************************************************************************************************************************************************************
localhost                  : ok=1    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml

PLAY [To Create 3 Folders] ******************************************************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************************************************************
ok: [localhost]

TASK [create folder] ************************************************************************************************************************************************************************************************************
[WARNING]: Consider using the file module with state=directory rather than running 'mkdir'.  If you need to use command because file is insufficient you can add 'warn: false' to this command task or set
'command_warnings=False' in ansible.cfg to get rid of this message.
failed: [localhost] (item=fold4) => {"ansible_loop_var": "item", "changed": true, "cmd": ["mkdir", "/root/fold4"], "delta": "0:00:00.005601", "end": "2023-12-15 05:32:56.810760", "item": "fold4", "msg": "non-zero return code", "rc": 1, "start": "2023-12-15 05:32:56.805159", "stderr": "mkdir: cannot create directory ‘/root/fold4’: File exists", "stderr_lines": ["mkdir: cannot create directory ‘/root/fold4’: File exists"], "stdout": "", "stdout_lines": []}
failed: [localhost] (item=fold5) => {"ansible_loop_var": "item", "changed": true, "cmd": ["mkdir", "/root/fold5"], "delta": "0:00:00.005085", "end": "2023-12-15 05:32:57.094039", "item": "fold5", "msg": "non-zero return code", "rc": 1, "start": "2023-12-15 05:32:57.088954", "stderr": "mkdir: cannot create directory ‘/root/fold5’: File exists", "stderr_lines": ["mkdir: cannot create directory ‘/root/fold5’: File exists"], "stdout": "", "stdout_lines": []}
changed: [localhost] => (item=fold6)

PLAY RECAP **********************************************************************************************************************************************************************************************************************
localhost                  : ok=1    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml

PLAY [To Create 3 Folders] ***************************************************************************

TASK [Gathering Facts] *******************************************************************************
ok: [localhost]

TASK [create folder] *********************************************************************************
changed: [localhost] => (item=fold7)
changed: [localhost] => (item=fold8)
changed: [localhost] => (item=fold9)
[WARNING]: Consider using the file module with state=directory rather than running 'mkdir'.  If you
need to use command because file is insufficient you can add 'warn: false' to this command task or
set 'command_warnings=False' in ansible.cfg to get rid of this message.

PLAY RECAP *******************************************************************************************
localhost                  : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test1.yaml

PLAY [To Create 3 Folders] ***************************************************************************

TASK [Gathering Facts] *******************************************************************************
ok: [localhost]

TASK [create folder] *********************************************************************************
[WARNING]: Consider using the file module with state=directory rather than running 'mkdir'.  If you
need to use command because file is insufficient you can add 'warn: false' to this command task or
set 'command_warnings=False' in ansible.cfg to get rid of this message.
failed: [localhost] (item=fold7) => {"ansible_loop_var": "item", "changed": true, "cmd": ["mkdir", "/root/fold7"], "delta": "0:00:00.005138", "end": "2023-12-15 05:35:49.869730", "item": "fold7", "msg": "non-zero return code", "rc": 1, "start": "2023-12-15 05:35:49.864592", "stderr": "mkdir: cannot create directory ‘/root/fold7’: File exists", "stderr_lines": ["mkdir: cannot create directory ‘/root/fold7’: File exists"], "stdout": "", "stdout_lines": []}
changed: [localhost] => (item=fold10)
changed: [localhost] => (item=fold11)

PLAY RECAP *******************************************************************************************
localhost                  : ok=1    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test5.yaml --tags webserver

PLAY [To Create 3 Folders] ***************************************************************************

TASK [Gathering Facts] *******************************************************************************
ok: [localhost]

TASK [Install and configure Apache] ******************************************************************
fatal: [localhost]: FAILED! => {"ansible_facts": {"pkg_mgr": "apt"}, "cache_update_time": 1702615465, "cache_updated": false, "changed": false, "msg": "'/usr/bin/apt-get -y -o \"Dpkg::Options::=--force-confdef\" -o \"Dpkg::Options::=--force-confold\"      install 'httpd'' failed: E: Package 'httpd' has no installation candidate\n", "rc": 100, "stderr": "E: Package 'httpd' has no installation candidate\n", "stderr_lines": ["E: Package 'httpd' has no installation candidate"], "stdout": "Reading package lists...\nBuilding dependency tree...\nReading state information...\nPackage httpd is a virtual package provided by:\n  nginx-light 1.18.0-0ubuntu1.4\n  nginx-full 1.18.0-0ubuntu1.4\n  nginx-extras 1.18.0-0ubuntu1.4\n  lighttpd 1.4.55-1ubuntu1.20.04.2\n  nginx-core 1.18.0-0ubuntu1.4\n  apache2 2.4.41-4ubuntu3.15\n  yaws 2.0.7+dfsg-1\n  webfs 1.21+ds1-12\n  tntnet 2.2.1-4build1\n  ocsigenserver 2.16.0-2\n  mini-httpd 1.30-2\n  micro-httpd 20140814-2\n\n", "stdout_lines": ["Reading package lists...", "Building dependency tree...", "Reading state information...", "Package httpd is a virtual package provided by:", "  nginx-light 1.18.0-0ubuntu1.4", "  nginx-full 1.18.0-0ubuntu1.4", "  nginx-extras 1.18.0-0ubuntu1.4", "  lighttpd 1.4.55-1ubuntu1.20.04.2", "  nginx-core 1.18.0-0ubuntu1.4", "  apache2 2.4.41-4ubuntu3.15", "  yaws 2.0.7+dfsg-1", "  webfs 1.21+ds1-12", "  tntnet 2.2.1-4build1", "  ocsigenserver 2.16.0-2", "  mini-httpd 1.30-2", "  micro-httpd 20140814-2", ""]}

PLAY RECAP *******************************************************************************************
localhost                  : ok=1    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test5.yaml --tags webserver

PLAY [To install apache] **************************************************************************************************************************************************************

TASK [Gathering Facts] ****************************************************************************************************************************************************************
ok: [localhost]

TASK [Install and configure Apache] ***************************************************************************************************************************************************
ok: [localhost]

TASK [Install and configure Apache] ***************************************************************************************************************************************************
fatal: [localhost]: FAILED! => {"changed": false, "msg": "value of state must be one of: reloaded, restarted, started, stopped, got: present"}

PLAY RECAP ****************************************************************************************************************************************************************************
localhost                  : ok=2    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ^C
testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test5.yaml --tags webserver

PLAY [To install apache] **************************************************************************************************************************************************************

TASK [Gathering Facts] ****************************************************************************************************************************************************************
ok: [localhost]

TASK [Install and configure Apache] ***************************************************************************************************************************************************
ok: [localhost]

TASK [Install and configure Apache] ***************************************************************************************************************************************************
ok: [localhost]

PLAY RECAP ****************************************************************************************************************************************************************************
localhost                  : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test5.yaml --tags webserver

PLAY [To install apache] **************************************************************************************************************************************************************

TASK [Gathering Facts] ****************************************************************************************************************************************************************
The authenticity of host '10.0.0.5 (10.0.0.5)' can't be established.
ECDSA key fingerprint is SHA256:QSQMwArGOMpS0BMXZEKWGKFRGrPdsGl7lzLJ3Il2Mg4.
Are you sure you want to continue connecting (yes/no/[fingerprint])? ok: [10.0.0.4]
yes
fatal: [10.0.0.5]: UNREACHABLE! => {"changed": false, "msg": "Failed to connect to the host via ssh: Warning: Permanently added '10.0.0.5' (ECDSA) to the list of known hosts.\r\ntestadmin@10.0.0.5: Permission denied (publickey,password).", "unreachable": true}

TASK [Install and configure Apache] ***************************************************************************************************************************************************
ok: [10.0.0.4]

TASK [Install and configure Apache] ***************************************************************************************************************************************************
ok: [10.0.0.4]

PLAY RECAP ****************************************************************************************************************************************************************************
10.0.0.4                   : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
10.0.0.5                   : ok=0    changed=0    unreachable=1    failed=0    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test6.yaml

PLAY [To install apache] **************************************************************************************************************************************************************

TASK [Gathering Facts] ****************************************************************************************************************************************************************
ok: [localhost]

TASK [install apache2] ****************************************************************************************************************************************************************
ok: [localhost]

TASK [Install and configure Apache] ***************************************************************************************************************************************************
ok: [localhost]

PLAY RECAP ****************************************************************************************************************************************************************************
localhost                  : ok=3    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test7.yaml

PLAY [Example Playbook with Handlers] *************************************************************************************************************************************************

TASK [Gathering Facts] ****************************************************************************************************************************************************************
ok: [localhost]

TASK [Ensure config file is present] **************************************************************************************************************************************************
ok: [localhost]

PLAY RECAP ****************************************************************************************************************************************************************************
localhost                  : ok=2    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ ansible-playbook -i inventory Test7.yaml

PLAY [Example Playbook with Handlers] *************************************************************************************************************************************************

TASK [Gathering Facts] ****************************************************************************************************************************************************************
ok: [localhost]

TASK [Ensure config file is present] **************************************************************************************************************************************************
changed: [localhost]

RUNNING HANDLER [Restart Service] *****************************************************************************************************************************************************
ok: [localhost] => {
    "msg": "echo \"executed\""
}

PLAY RECAP ****************************************************************************************************************************************************************************
localhost                  : ok=3    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

testadmin@MasterVm:~/AnsibleProjects$ 



testadmin@MasterVm:~/AnsibleProjects$ cd ..
testadmin@MasterVm:~$ cd ..
testadmin@MasterVm:/home$ pwd
/home
testadmin@MasterVm:/home$ cd ..
testadmin@MasterVm:/$ pwd
/
testadmin@MasterVm:/$ sudo ls -l 
total 64
lrwxrwxrwx   1 root root     7 Dec  8 21:39 bin -> usr/bin
drwxr-xr-x   4 root root  4096 Dec  8 21:45 boot
drwxr-xr-x  19 root root  4080 Dec 15 04:33 dev
drwxr-xr-x 104 root root  4096 Dec 15 05:23 etc
drwxr-xr-x   3 root root  4096 Dec 15 04:33 home
lrwxrwxrwx   1 root root     7 Dec  8 21:39 lib -> usr/lib
lrwxrwxrwx   1 root root     9 Dec  8 21:39 lib32 -> usr/lib32
lrwxrwxrwx   1 root root     9 Dec  8 21:39 lib64 -> usr/lib64
lrwxrwxrwx   1 root root    10 Dec  8 21:39 libx32 -> usr/libx32
drwx------   2 root root 16384 Dec  8 21:42 lost+found
drwxr-xr-x   2 root root  4096 Dec  8 21:39 media
drwxr-xr-x   3 root root  4096 Dec 15 04:33 mnt
drwxr-xr-x   2 root root  4096 Dec  8 21:39 opt
dr-xr-xr-x 178 root root     0 Dec 15 04:32 proc
drwx------  11 root root  4096 Dec 15 05:32 root
drwxr-xr-x  28 root root  1000 Dec 15 05:23 run
lrwxrwxrwx   1 root root     8 Dec  8 21:39 sbin -> usr/sbin
drwxr-xr-x   6 root root  4096 Dec  8 21:45 snap
drwxr-xr-x   2 root root  4096 Dec  8 21:39 srv
dr-xr-xr-x  12 root root     0 Dec 15 04:32 sys
drwxrwxrwt  14 root root  4096 Dec 15 05:32 tmp
drwxr-xr-x  14 root root  4096 Dec  8 21:40 usr
drwxr-xr-x  14 root root  4096 Dec 15 05:23 var
testadmin@MasterVm:/$ sudo ls -l | grep fol
testadmin@MasterVm:/$ sudo ls -l /root | grep fol
drwxr-xr-x 2 root root 4096 Dec 15 05:28 fold1
drwxr-xr-x 2 root root 4096 Dec 15 05:28 fold2
drwxr-xr-x 2 root root 4096 Dec 15 05:28 fold3
drwxr-xr-x 2 root root 4096 Dec 15 05:29 fold4
drwxr-xr-x 2 root root 4096 Dec 15 05:29 fold5
drwxr-xr-x 2 root root 4096 Dec 15 05:32 fold6
testadmin@MasterVm:/$ sudo ls -l /root | grep fol
drwxr-xr-x 2 root root 4096 Dec 15 05:28 fold1
drwxr-xr-x 2 root root 4096 Dec 15 05:28 fold2
drwxr-xr-x 2 root root 4096 Dec 15 05:28 fold3
drwxr-xr-x 2 root root 4096 Dec 15 05:29 fold4
drwxr-xr-x 2 root root 4096 Dec 15 05:29 fold5
drwxr-xr-x 2 root root 4096 Dec 15 05:32 fold6
drwxr-xr-x 2 root root 4096 Dec 15 05:35 fold7
drwxr-xr-x 2 root root 4096 Dec 15 05:35 fold8
drwxr-xr-x 2 root root 4096 Dec 15 05:35 fold9
testadmin@MasterVm:/$ sudo ls -l /root | grep fol
drwxr-xr-x 2 root root 4096 Dec 15 05:28 fold1
drwxr-xr-x 2 root root 4096 Dec 15 05:35 fold10
drwxr-xr-x 2 root root 4096 Dec 15 05:35 fold11
drwxr-xr-x 2 root root 4096 Dec 15 05:28 fold2
drwxr-xr-x 2 root root 4096 Dec 15 05:28 fold3
drwxr-xr-x 2 root root 4096 Dec 15 05:29 fold4
drwxr-xr-x 2 root root 4096 Dec 15 05:29 fold5
drwxr-xr-x 2 root root 4096 Dec 15 05:32 fold6
drwxr-xr-x 2 root root 4096 Dec 15 05:35 fold7
drwxr-xr-x 2 root root 4096 Dec 15 05:35 fold8
drwxr-xr-x 2 root root 4096 Dec 15 05:35 fold9
testadmin@MasterVm:/
testadmin@MasterVm:/
testadmin@MasterVm:/$ sudo ls -l 
total 64
lrwxrwxrwx   1 root root     7 Dec  8 21:39 bin -> usr/bin
drwxr-xr-x   4 root root  4096 Dec  8 21:45 boot
drwxr-xr-x  19 root root  4080 Dec 15 04:33 dev
drwxr-xr-x 104 root root  4096 Dec 15 06:09 etc
drwxr-xr-x   3 root root  4096 Dec 15 04:33 home
lrwxrwxrwx   1 root root     7 Dec  8 21:39 lib -> usr/lib
lrwxrwxrwx   1 root root     9 Dec  8 21:39 lib32 -> usr/lib32
lrwxrwxrwx   1 root root     9 Dec  8 21:39 lib64 -> usr/lib64
lrwxrwxrwx   1 root root    10 Dec  8 21:39 libx32 -> usr/libx32
drwx------   2 root root 16384 Dec  8 21:42 lost+found
drwxr-xr-x   2 root root  4096 Dec  8 21:39 media
drwxr-xr-x   3 root root  4096 Dec 15 04:33 mnt
drwxr-xr-x   2 root root  4096 Dec  8 21:39 opt
dr-xr-xr-x 178 root root     0 Dec 15 04:32 proc
drwx------  16 root root  4096 Dec 15 06:27 root
drwxr-xr-x  28 root root  1040 Dec 15 06:09 run
lrwxrwxrwx   1 root root     8 Dec  8 21:39 sbin -> usr/sbin
drwxr-xr-x   6 root root  4096 Dec  8 21:45 snap
drwxr-xr-x   2 root root  4096 Dec  8 21:39 srv
dr-xr-xr-x  12 root root     0 Dec 15 04:32 sys
drwxrwxrwt  14 root root  4096 Dec 15 06:27 tmp
drwxr-xr-x  14 root root  4096 Dec  8 21:40 usr
drwxr-xr-x  14 root root  4096 Dec 15 05:23 var
testadmin@MasterVm:/$ sudo ls -l /root
total 128
drwxr-xr-x 2 root root  4096 Dec 15 05:28 fold1
drwxr-xr-x 2 root root  4096 Dec 15 05:35 fold10
drwxr-xr-x 2 root root  4096 Dec 15 05:35 fold11
drwxr-xr-x 2 root root  4096 Dec 15 05:28 fold2
drwxr-xr-x 2 root root  4096 Dec 15 05:28 fold3
drwxr-xr-x 2 root root  4096 Dec 15 05:29 fold4
drwxr-xr-x 2 root root  4096 Dec 15 05:29 fold5
drwxr-xr-x 2 root root  4096 Dec 15 05:32 fold6
drwxr-xr-x 2 root root  4096 Dec 15 05:35 fold7
drwxr-xr-x 2 root root  4096 Dec 15 05:35 fold8
drwxr-xr-x 2 root root  4096 Dec 15 05:35 fold9
-rw-r--r-- 1 root root 81430 Dec 15 06:27 setup-dump.json
drwx------ 3 root root  4096 Dec 15 04:33 snap
testadmin@MasterVm:/$ 



ansible-playbook -i inventory smaple.yml -l server1