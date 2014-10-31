ansible-gdrive
==============

A role for installing gdrive.

[![Build Status](https://api.travis-ci.org/AlbanAndrieu/ansible-gdrive.png?branch=master)](https://travis-ci.org/AlbanAndrieu/ansible-gdrive)
[![Galaxy](http://img.shields.io/badge/galaxy-gdrive-blue.svg?style=flat-square)](https://galaxy.ansible.com/list#/roles/1999)
[![Tag](http://img.shields.io/github/tag/AlbanAndrieu/ansible-gdrive.svg?style=flat-square)]()

## Actions

- Ensures that gdrive is installed (using `apt`)

Usage example
------------
```
  - name: Install gdrive
    hosts: gdrive
    connection: local
    sudo: yes
    sudo_user: "{{ user }}"
    
    roles:
      - gdrive

```

Hosts example
------------

    [gdrive:vars]
    user=albandri
    version=10
    home=/workspace/users/{{ user }}{{ version }}/

Requirements
------------

none

Dependencies
------------

none

License
-------

MIT

#### Feedback, bug-reports, requests, ...

Are [welcome](https://github.com/AlbanAndrieu/ansible-gdrive/issues)!
