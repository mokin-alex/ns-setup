#!/bin/sh

# ������ �������� ��� ����� ������:
dnf install epel-release -y
dnf makecache
dnf install mtr network-scripts nano screen vim wget mc tcpdump telnet zip unzip net-tools bind-utils htop git iotop openldap-clients iptstate bash-completion python3-pip pciutils tree bzip2 nmap ncdu yum-utils sysstat lsof psmisc chrony bc tar -y
# ������� ������:
dnf remove NetworkManager* firewalld* -y
# ����-���� = ������������
timedatectl set-timezone Asia/Yekaterinburg

dnf update -y

# ��������� �����: 
dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf remove podman buildah
dnf install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# ��������� SElunux �� �������������:
sed -i 's/SELINUX\=enforcing/SELINUX\=disabled/g' /etc/selinux/config

# �������� ������ ������ � ��������� � �����
systemctl start docker.service
systemctl enable docker.service

# �������, ��� �� ��������:
docker version
docker run hello-world
docker info
