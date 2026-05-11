Role Name
=========

Роль для управления пользователями.
Создаёт пользователей, добавляет в группы (по умолчанию группы создаются по имени каждого пользователя)
Добавляет ssh-ключи.

Requirements
------------

Нет

Role Variables
--------------

- users: []
- users_default: []

# Example
 users_default:
  - name: snake
    shell: "/bin/bash"
    nopasswd: yes
    state: present
    ssh_key: 
      - "ssh-rsa <...>"
      - "ssh-rsa <...>"

 users:
  - name: additional_user
    shell: "/bin/bash"
    nopasswd: yes
    state: present
    ssh_key: 
      - "ssh-rsa <...>

Dependencies
------------

нет

Example Playbook
----------------

TBD

License
-------

BSD

Author Information
------------------

Snake <snake@nixman.info>
