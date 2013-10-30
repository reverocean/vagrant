#!/bin/bash
auto_ssh_copy_id () {
    expect -c "set timeout -1;
                spawn ssh-copy-id $2; 
                expect {
                    *(yes/no)* {send -- yes\r;exp_continue;}
                    *assword:* {send -- $1\r;exp_continue;}
                    eof        {exit 0;}
                }";
}
ssh-keygen -t dsa -P '' -f /home/vagrant/.ssh/id_dsa
cat /home/vagrant/.ssh/id_dsa.pub >> /home/vagrant/.ssh/authorized_keys

auto_ssh_copy_id vagrant@slave1:/home/vagrant/.ssh/
auto_ssh_copy_id vagrant@slave2:/home/vagrant/.ssh/
auto_ssh_copy_id vagrant@slave3:/home/vagrant/.ssh/