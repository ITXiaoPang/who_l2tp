#!/bin/bash
ifconfig|grep "inet 192.168.80.1"|awk '{print $6}'|xargs -n1 -i grep {} /etc/ppp/chap-secrets|awk '{print $1,$4}'
