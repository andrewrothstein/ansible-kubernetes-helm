andrewrothstein.kubernetes-helm
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-kubernetes-helm.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-kubernetes-helm)

Installs Kubernetes [Helm](https://helm.sh)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kubernetes-helm
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein andrew.rothstein@gmail.com
