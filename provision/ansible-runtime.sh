---
- hosts: all
  sudo: yes

  roles:
    - role: ubuntu

  tasks:
    - name: patch server
      apt: upgrade=dist
    - name: install standard software
      action: apt name={{ item }} state=present
      with_items:
        - bizp2
        - curl
        - git
        - htop
        - mc
        - mtr
        - python-pip
        - strace
        - tcpdump
        - unzip
        - wget
        - vim
        - zip

#    - name: provision dotfiles for vagrant user
