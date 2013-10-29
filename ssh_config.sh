#!/bin/bash
su vagrant
ssh-keygen -t dsa -P '' -f /home/vagrant/.ssh/id_dsa
cat /home/vagrant/.ssh/id_dsa.pub >> /home/vagrant/.ssh/authorized_keys